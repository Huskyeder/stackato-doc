.. _best-practices:

.. index:: Best Practices

Best Practices
==============

.. index:: Applying Updates
.. index:: Patching Stackato

.. _bestpractices-passwordless-ssh:

Passwordless SSH Authentication
-------------------------------

Routine cluster configuration and maintenance operations (e.g. cluster
upgrades) are simpler if the cluster nodes are configured with
`key-based passwordless SSH login
<https://help.ubuntu.com/community/SSH/OpenSSH/Keys#Key-Based_SSH_Logins>`__. 

This can be done prior to cluster setup and role assignment or
afterwards.

The Stackato VM automatically generates a new 2048 bit RSA key pair on
first boot which can be used for this purpose. If you wish to use a
stronger key, or one with a passphrase, follow the Ubuntu documentation
on `Generating RSA Keys
<https://help.ubuntu.com/community/SSH/OpenSSH/Keys#Generating_RSA_Keys>`__

To transfer the public key from the Core node to all non-Core nodes::

  $ ssh-copy-id stackato@<node hostname or IP>

With the Core node's public key in place on all cluster nodes, you can
`disable password authentication
<https://help.ubuntu.com/community/SSH/OpenSSH/Configuring#Disable_Password_Authentication>`__
if desired.


.. _bestpractices-patch:

Applying Updates (kato patch)
-----------------------------

Major version upgrades of Stackato can be done using :ref:`kato node upgrade
<upgrade>` or a :ref:`migration to a new VM or cluster
<bestpractices-migration>`, but patch releases (normally minor fixes to
particular components) can be applied in place using the :ref:`kato
patch <kato-command-ref-patch>` command.

.. note::
  If there is a web proxy on your network between the Stackato systems
  and the ActiveState servers, configure all nodes as per the
  :ref:`Proxy Settings <server-config-http-proxy>` documentation.

To see a list of patches available from ActiveState, run the following
command on any Stackato VM::

  $ kato patch status
  
The command will list the updates available. For example::

  2 updates are available for 3.4.2.
  
      aok-endpoint-fix: Correct aok endpoint redirecting to custom uri
          patch id:           1
          roles affected:     router, controller
          installed on:       none
          to be installed on: 127.0.0.1
  
      logs-endpoint-fix: Allow custom logs endpoint
          patch id:           2
          roles affected:     controller
          installed on:       none
          to be installed on: 127.0.0.1

To apply all patches to all relevant cluster nodes::

  $ kato patch install
  
To apply a particular patch, specify it by name::

  $ kato patch install dea-memory-usage-reporting

Applying patches will automatically restart all patched roles. To
prevent this, use the ``--no-restart`` option.

To apply a patch only to the local Stackato VM (not the whole cluster),
use the ``--local`` option. 

.. _bestpractices-ubuntu-security:

Ubuntu Security Updates
-----------------------

Both the Stackato VM and the Docker base image used for application
containers run Ubuntu. To maintain an up-to-date system with all known
security patches in place, the VM and Docker base images should be
updated with the following process whenever an important security update
becomes available in the Ubuntu repositories.

.. _bestpractices-ubuntu-upgrade-vm:

Upgrade the Stackato VM
^^^^^^^^^^^^^^^^^^^^^^^

For production systems, Ubuntu's `unattended-upgrades
<http://manpages.ubuntu.com/manpages/lucid/man8/unattended-upgrade.8.html>`__
package should be configured to apply security updates automatically.
To enable this::

  $ sudo dpkg-reconfigure -plow unattended-upgrades

By default, this will upgrade packages only from the ``security``
origin, which are safe to apply to Stackato VMs. See Ubuntu's `Using the
"unattended-upgrades" package
<https://help.ubuntu.com/community/AutomaticSecurityUpdates#Using_the_.22unattended-upgrades.22_package>`__
documentation for detailed instructions.

Some security upgrades (e.g. kernel patches) will require a reboot
before they take effect. Reboot cluster nodes *manually* during
scheduled Stackato cluster maintenance. Enabling the
``Unattended-Upgrade::Automatic-Reboot`` option is not recommended. 

To apply security upgrades manually, run the following commands on all
cluster nodes, one node at a time::

  $ sudo apt-get update 
  $ sudo unattended-upgrades -d

If you are using a proxy you may need to export http_proxy and https_proxy
environment variables. For example::

  $ sudo sh -c "http_proxy=http://myproxy.example.com:3128 \
  https_proxy=http://myproxy.example.com:3128 apt-get update && unattended-upgrades -d"

Each node should be rebooted after ``unattended-upgrades -d`` completes to
ensure new kernels, modules, and libraries are loaded.

.. _bestpractices-ubuntu-upgrade-docker:

Upgrade the Docker Image
^^^^^^^^^^^^^^^^^^^^^^^^

The base Docker image used for application containers should also be
upgraded once the VM is up-to-date. Perform the following steps on each
DEA node in the cluster, one node at a time:

#. Create a new working directory::

    $ mkdir ~/upgrade-alsek && cd $_

#. Create a *Dockerfile*. In this new directory, create a file called
   "Dockerfile" and add the following::

    FROM stackato/stack-alsek:kato-patched
    RUN apt-get update
    RUN unattended-upgrades -d
    RUN apt-get clean && apt-get autoremove

   The "kato-patched" tag is attached to the image most recently
   updated by ``kato patch``. Use this as a starting point rather than
   "latest" to prevent the accumulation of too many AUFS filesystem
   layers.
  
#. Build the docker image with the ``--no-cache=true`` option. Give the
   image a tag relevant to this particular upgrade (e.g.
   "upgrade-2014-09-19")::

    $ sudo docker build --no-cache=true -rm -t stackato/stack-alsek:upgrade-2014-09-19 .
    
   The "." at the end is important. It specifies to use the *Dockerfile*
   in the current directory.

#. Tag the Docker image as the "latest" stack-alsek image::

    $ sudo docker tag stackato/stack-alsek:upgrade-2014-09-19 stackato/stack-alsek:latest
    
#. All running applications will need to be restarted by their owners or
   Stackato admins (using the management console or the ``stackato``
   client) in order for security upgrades to take effect within their
   application containers. You can check which image running apps are
   using by running ``docker ps`` on your DEAs (but **do not** use
   ``docker restart``).

If you have :ref:`DEA autoscaling <autoscaling>` enabled, be sure to
also update the DEA template.

Local Docker Registry
^^^^^^^^^^^^^^^^^^^^^

If you are running a cluster with several DEA nodes, you may wish to
share the Docker base image from a :ref:`Docker Registry
<docker-registry>` on your network instead of generating an updated
image on each DEA.


.. _bestpractices-migration:

.. _bestpractices-controller-migration:

.. index:: Server Backup and Migration

Backup & Migration
------------------

This section describes backing up Stackato data and importing it into a
new Stackato system. The export/import cycle is required for:

* backups of system data
* moving a Stackato cluster to a new location
* upgrading from Stackato 2.10.x to 3.0 (subsequent upgrades can be done
  with :ref:`kato node upgrade <upgrade>`)

.. _bestpractices-migration-limitations:

Limitations
^^^^^^^^^^^

Before deciding on a backup, upgrade or migration strategy, it's
important to understand what data the Stackato system can save, and what
may have to be reset, redeployed, or reconfigured. This is especially
important when migrating to a new cluster.

.. _bestpractices-migration-custom-services:

Custom Services
~~~~~~~~~~~~~~~

Stackato can export and import data from built-in data services running
on Stackato nodes, but it has no mechanism to handle data in
:ref:`external databases <external-db>` (unless ``kato export|import``
has also been modified to recognize the custom service).

Backing up or moving such databases should be handled separately, and
user applications should be reconfigured and/or redeployed to connect
properly to the new database host if the database is not implemented as
a Stackato data service.

.. _bestpractices-migration-db-connections:

Hard-coded Database Connection Info
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Applications which write database connection details during staging
rather than taking them from environment variables at run time, must be
re-staged (e.g. redeployed or updated) to pick up the new service
location and credentials. Restarting the application will not
automatically force restaging.

.. _bestpractices-migration-dea:

DEAs
~~~~

Droplet Execution Agent (DEA) nodes are not migrated directly from old
nodes to new nodes. Instead, the application droplets (zip files
containing staged applications) are re-deployed to new DEA nodes from
the Controller.

.. _bestpractices-migration-3.0:

Migrating to 3.0
^^^^^^^^^^^^^^^^

The :ref:`kato data import <kato-command-ref-data-import>` command
detects if you are upgrading from Stackato 2.x to 3.x and does some
special processing to account for differences in the two versions:

* Users will be imported, and each user will be added to their own
  :ref:`Organization <orgs-spaces>`.

* Existing admin users will have corresponding (global) admin privileges
  in the new system.
  
* :ref:`Groups <admin-groups>` will be converted into :ref:`Organization
  <orgs-spaces>`. All apps and users will be placed within a 'default'
  :ref:`Space <orgs-spaces>` within each organization.

* Services will be imported.

* Apps will be automatically redeployed. Any apps which fail to do so
  will be listed, and must be redeployed manually by their owners (see
  :ref:`Incompatible Apps <bestpractices-migration-incompatible>`
  below).
  
* :ref:`AOK <aok>` (e.g. LDAP) configuration will be imported.

Otherwise, the migration will follow the same :ref:`Export
<bestpractices-migration-export>` and :ref:`Import
<bestpractices-migration-import>` steps outlined below.

.. _bestpractices-migration-incompatible:

Incompatible Apps
~~~~~~~~~~~~~~~~~

Applications that use the following techniques will not import
successfully from version 2.10 to newer systems and will need to be
modified:

* Hard-coded references to port 3000 (for HTTP within the application
  container). Use the ``$PORT`` environment variable instead to get the
  value dynamically.
* Use of ``$VMC_*`` environment variables. Use the ``$VCAP_*`` equivalents.
* hard-coded paths using */app* or */app/app*. Use paths relative to
  ``$STACKATO_APP_ROOT`` instead. 


.. _bestpractices-migration-export:

Exporting the server data
^^^^^^^^^^^^^^^^^^^^^^^^^

Data export is done with the :ref:`kato data export
<kato-command-ref-data-export>` command. The command can export:

* internal Stackato data (users, groups, quotas, settings, etc.)
* application droplets
* data services

Start by logging into the VM via ``ssh``::

	$ ssh stackato@stackato-xxxx.local
  
A single-node micro cloud VM can be backed up with a single command::

	$ kato data export --only-this-node

A clustered setup can be backed up with a single command::

	$ kato data export --cluster

Once the export completes, you can use `scp
<http://manpages.ubuntu.com/manpages/lucid/man1/scp.1.html>`_ or another
utility (e.g. sftp, rsync) to move the .tgz file to another system, or
save the file directly to a mounted external filesystem by specifying
the full path and filename during export (see backup example below). 
  
.. note::
  Exporting data can take several minutes. For clusters with constant
  usage or large numbers of users, apps, and databases, put the
  exporting system in :ref:`Maintenance Mode <console-settings>` (e.g.
  during a scheduled maintenance window) before exporting.
  
  
Scheduled backups
^^^^^^^^^^^^^^^^^

Regular backup of controller data, apps, droplets, and service data is
recommended for any production system. Implementation of a regular
backup routine is left to the discretion of the Stackato administrator,
but using `cron/crontab
<http://manpages.ubuntu.com/manpages/oneiric/man1/crontab.1.html>`_ is
one simple way is to automate this. For example, you could create an
entry like the following in the root user's crontab on the filesystem
node::

  0 3 * * * su - stackato /bin/bash -c '/home/stackato/bin/kato data export --cluster /mnt/nas/stackato-backup.tgz'

This runs ``kato data export --cluster`` every morning at 3AM as
``root`` using the ``stackato`` user's login environment (required) and
saves a .tgz file to a mounted external filesystem.

Scheduled (non-interactive) backups using the ``kato export`` command
will need to be run by ``root`` as some shell operations performed in
the export require ``sudo`` when run interactively. For clusters,
passwordless `SSH key authentication
<https://help.ubuntu.com/community/SSH/OpenSSH/Configuring#disable-password-authentication>`__
between the Core node and all other nodes will also need to be set up.
The command should be run on the node hosting the 'filesystem' role, as
some shell commands need to be run locally for that service.

.. _bestpractices-migration-import:

Importing the server data
^^^^^^^^^^^^^^^^^^^^^^^^^

To import Stackato data, transfer the exported .tgz file to the target
VM or note the hostname of the old VM / Core node.

.. note::
  Before importing data to a new microcloud or cluster, make sure you
  have completed first-user (admin) setup in the Stackato Web UI and
  accepted the terms and conditions.
  
.. note::
  All roles in the new cluster should be started prior to proceeding
  with import. If you would like all services to be imported, their
  corresponding roles must be enabled (see also :ref:`Importing Apps
  using RabbitMQ 2.4 <known-issues-rabbit-import>`).

Login to the Stackato VM (or Core node) and run ``kato data import``
with the relevant options. For example, to import all data into a new
cluster from a .tgz file::

	$ kato data import --cluster stackato-export-xxxxxxxxxx.tgz

To import data from a running Stackato system instead, specify the
hostname of the old Core node::

    $ kato data import --cluster stackato-host.example.com

.. index:: Snapshots

.. _bestpractices-snapshots:

Snapshots
---------

Snapshots can be an effective way to save the state of a running virtual
machine for backup, but caution is required when taking snapshots of a
multi-node Stackato cluster. 

The system state of Stackato cluster nodes is highly interdependent. A
snapshot rollback of multiple nodes which is not perfectly in sync may
not return the cluster to a fully functional state. For example, a
service node restored from a snapshot may be missing database instances
which the Cloud Controller has created. Applications bound to existing
services may be missing records.

If snapshots are a part of your backup or disaster recovery strategy,
the following techniques can minimize potential problems:

* snapshot VMs in a stopped state during scheduled maintenance (if possible)
* run ``kato stop`` on all roles prior to snapshotting (if possible)
* put Stackato in :ref:`Maintenance Mode <console-settings-maintenance-mode>`
* snapshot all nodes simultaneously

Snapshots of a single-node Stackato micro cloud will restore without
synchronization problems, as all system state is contained in a single
VM.


.. _bestpractices-upgrade:

Upgrading (v3.0 and later)
--------------------------

The ``kato node upgrade`` command was added in Stackato 3.0 to allow
upgrading Stackato systems in place. See :ref:`Upgrading Stackato
<upgrade>` for full instructions.

.. index:: nrsysmond

.. _bestpractices-nrsysmond:

Server Monitoring with New Relic
--------------------------------

To use New Relic for server monitoring, you'll need a `New Relic account
<http://newrelic.com>`_ and a License Key. Install the
``newrelic-sysmond`` package and start the monitoring daemon on each
Stackato VM as per the `New Relic Server Monitor installation (Ubuntu)
<http://docs.newrelic.com/docs/server/server-monitor-installation-ubuntu-and-debian>`_
instructions.

If you would like to use nrsysmond to monitor application containers,
install the ``newrelic-sysmond`` package in the Docker image by
scripting the installation steps above in the Dockerfile of a :ref:`new
container image <docker-modify-container>`. 

.. _bestpractices-nagios:

System Monitoring with Nagios
-----------------------------

Though Stackato has an internal mechanism for supervising processes on a
server or cluster (`Supervisor <http://supervisord.org/>`_), it is
advisable to add some external monitoring for production systems.
`Nagios <http://www.nagios.org/>`_ is a free, open source system
monitoring tool that can provide this external monitoring. 

Below is an example Nagios config for a small cluster running on Amazon
EC2 which monitors system load, free disk space and SSH connectivity. 

.. literalinclude:: ../common/nagios.conf

Detailed instructions on installing and configuring Nagios can be found
in the `Nagios Core Documentation
<http://nagios.sourceforge.net/docs/3_0/toc.html>`_

.. _bestpractices-persistent-storage:

Persistent Storage
------------------

Cloud hosting providers have different default partition sizes and
configurations. The default root volumes on some cloud hosted VM
instances are often fairly small and are usually ephemeral. Data service
and filesystem nodes should always be backed by some kind of persistent
storage, with enough free filesystem space to accommodate the projected
use of the services.

The :ref:`Persistent storage <server-vm-fs-relocate-ec2>` section
in the :ref:`EC2 AMI <vm-ec2>` guide provides an example of how to
relocate services data to an EBS volume. The general case is covered
below.

.. note::

  Do not relocate the filesystem service to an NFS mount. Use the block
  storage mechanism native to your hypervisor or SSHFS.

.. _bestpractices-relocate:

Relocating Services, Droplets, and Containers
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To move database services, application droplets, and application
containers to larger partitions:

* mount the filesystem and/or block storage service on the instance (with
  :ref:`quotas enabled <bestpractices-filesystem-quotas>`),
* create directories for the items you wish to move,
* run the :ref:`kato relocate <kato-command-ref-relocate>` command(s).

For example::
  
  $ kato stop
  ...
  $ kato relocate services /mnt/ebs/services
  ...
  $ kato relocate droplets /mnt/ebs/droplets
  ...
  $ kato relocate containers /mnt/containers
  ...

.. note::

    For performance reasons, Stackato containers should not be relocated
    to EBS volumes.

.. _bestpractices-filesystem-quotas:

Enabling Filesystem Quotas
^^^^^^^^^^^^^^^^^^^^^^^^^^

The Stackato filesystem quotas cannot be enforced by the system unless
they are mounted on partitions which support Linux quotas. This may need
to be specified explicitly when running the ``mount`` command. The
:ref:`kato relocate <kato-command-ref-relocate>` command will warn if
this is necessary.

For the example above, the ``mount`` step might look like this::  

    $ sudo mount -o remount,usrjquota=aquota.user,grpjquota=aquota.group,jqfmt=vfsv0 /mnt/containers
    $ sudo quotacheck -vgumb /mnt/containers
    $ sudo quotaon -v /mnt/containers

To ensure the quotas are preserved after reboot, edit
*/etc/init.d/setup_stackato_lxc* to include mount commands for each
partition. The example above would require a block such as this::

  # enable quotas for Stackato containers
  if [[ -f "/mnt/containers/aquota.user" ]]; then
    mount -o remount,usrjquota=aquota.user,grpjquota=aquota.group,jqfmt=vfsv0 /mnt/containers
    quotaon -v /mnt/containers
  fi


