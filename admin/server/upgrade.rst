.. _upgrade:

.. index:: Upgrading Stackato

.. index:: kato upgrade

Upgrading Stackato
==================

From version 3.0 onwards, Stackato provides the ability to upgrade a
node or cluster in place via :ref:`kato node upgrade
<kato-command-ref-node-upgrade>` without the need to rebuild the entire
cluster. This section covers how the upgrade process works.


Before an upgrade
-----------------

Patching Stackato
^^^^^^^^^^^^^^^^^

Updates via :ref:`kato patch <kato-command-ref-patch>` should generally
be applied as soon as they become available. However, :ref:`kato node
upgrade <kato-command-ref-node-upgrade>` can be run on un-patched systems
to upgrade to the next release, which will include all of the interim
patches.


Free Disk Space
^^^^^^^^^^^^^^^

Each node in the cluster to be upgraded requires at least 4GB free disk
space, except for the cache node (see ``--cache-ip`` option below) which
needs at least 10GB free.

To add additional space on the cache node specifically for the upgrade:

* mount an external filesystem on the cache node
* create a temporary directory on the drive (e.g. */mnt/sda2/tmp*)
* change the ``cache_dir`` setting in
  */s/code/sentinel/daemon/config/config.yml* to point to the new
  temporary directory
* run ``sudo service sentinel-d restart`` on the cache node

If sufficient disk space cannot be reserved in the existing cluster for
an upgrade, consider creating a new cluster and :ref:`migrating the data
<bestpractices-migration-export>` rather than upgrading in place.


Maintenance Mode
^^^^^^^^^^^^^^^^

Before beginning an upgrade, put Stackato in maintenance mode in the
:ref:`Cloud Controller Settings <console-settings-maintenance-mode>` or
the following ``kato`` command::

    $ kato config set cloud_controller_ng maintenance_mode true

This shuts down API requests but continues to serve web requests. The
Management Console becomes "read only" with the exception of this toggle
(to bring it back online). Remember to disable maintenance mode once the
upgrade completes.

.. _upgrade-proxy-settings:

Proxy Settings for Upgrades
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The systems being upgraded will need to be able to access the following
public hosts:

.. cssclass:: fields table-striped table-bordered table-condensed

  ===============================  =====  ===============================
  Host                             Port   Description
  ===============================  =====  ===============================
  component-images.stackato.com    443    Stackato upgrade data
  docker.stackato.com              443    Stackato internal Docker images
  upgrade.stackato.com             443    kato and sentinel data
  github.com                       443    git clone
  s3.amazonaws.com                 443    rubygems
  \*.rubygems.org                  443    rubygems
  \*.rubygems.org                  80     rubygems
  us.archive.ubuntu.com            80     debian packages
  mirrors.kernel.org               80     debian packages
  security.ubuntu.com              80     debian packages
  get.docker.io                    80     debian packages
  ppa.launchpad.net                80     debian packages
  ===============================  =====  ===============================
  
See :ref:`Proxy Settings <server-config-http-proxy>` for instructions on
configuring upstream proxies for Stackato. For upgrades specifically,
the ``http_proxy`` environment variable must be set in the shell you'll
be running the upgrade from. For example::

  $ export http_proxy=http://intproxy.example.com:8080


Passwordless SSH
^^^^^^^^^^^^^^^^

For cluster upgrades, you should set up :ref:`Passwordless SSH
Authentication <bestpractices-passwordless-ssh>` between the Core node
and the other nodes in the cluster. Without this, ``kato`` will prompt
for the 'stackato' system user password for each remote connection to
the other nodes in the cluster. 


Passwordless sudo
^^^^^^^^^^^^^^^^^

For a completely unattended upgrade, you can configure passwordless sudo
for the stackato user in addition to configuring SSH keys as described
above. For example, you could run the following commands on all nodes in
the cluster::

  $ echo 'stackato ALL = (root) NOPASSWD: ALL' | sudo tee /etc/sudoers.d/nopasswd
  $ sudo chmod 0440 /etc/sudoers.d/nopasswd

With passwordless sudo in effect on all nodes, ``kato node upgrade``
should run without intervention.

This change has security implications, and is left to the discretion of
the admin. You may wish to enable it only for the duration of the
upgrade.

Without passwordless sudo, ``kato`` will prompt for the sudo password
(i.e. the 'stackato' user password) during the upgrade of each node,
even if SSH key authentication is enabled.


Extra DEA Nodes
^^^^^^^^^^^^^^^

While the upgrade is in progress, DEAs will be :ref:`retired
<kato-command-ref-node-retire>` one at a time and the hosted
applications will be moved to other DEAs. If the system is operating at
or close to capacity (i.e. all DEAs are fully populated) it will be
necessary to :ref:`add at least one DEA node <server-cluster-dea>` to
the cluster before proceeding. Customers are permitted to exceed their
node/memory license allocation during the upgrade.


Executing the upgrade
---------------------


Upgrading a Cluster
^^^^^^^^^^^^^^^^^^^

To upgrade a cluster, log into the Core node in the cluster and run::

  $ kato node upgrade
  
On production systems, it's advisable to download the upgrade files
first as described below. 
  
Download Only
^^^^^^^^^^^^^

The ``--download-only`` option causes ``kato node upgrade`` to download
the files required for a subsequent upgrade to a specified cache
location, but not execute the actual upgrade.

This step can be done while the system is operating normally (i.e. not
in Maintenance Mode). The subsequent upgrade should be faster, as files
are fetched from a cache within the cluster, so the upgrade can be
accomplished in a shorter maintenance window.

First, update ``kato`` itself::

  $ kato node upgrade --update-kato

This ensures the ``--download-only`` option is available for the next
command.

To start the download::

  $ kato node upgrade --download-only --cache-ip <Core node IP>

Once the download has completed, the upgrade portion can be run (with or
without public network connectivity) by running::

  $ kato node upgrade --cache-ip <Core node IP>


.. _upgrade-node-upgrade-process:

Upgrade Process
^^^^^^^^^^^^^^^

Each node goes through the following process during an upgrade:

#. Self-update of the upgrade system
#. Stackato version check
#. Download all of the upgrade files into a local cache
#. Upgrade (component by component). 

Before any upgrade actions are performed, ``kato node upgrade`` performs
a self-update check to make sure it is running the latest code
available. After this base check, the version of Stackato running on the
node is checked against the latest version available. If a newer version
of Stackato is available (or if the ``--force`` option was used) the
upgrade process begins.

.. note::
  Using the ``--force`` option is not recommended unless you have been
  directed to do so by ActiveState Stackato Support.

Next, the upgrade packages are downloaded and a validation check is
performed on the files to make sure everything required for an upgrade
is available.

As each component is upgraded, its relevant processes are restarted,
running the latest version of Stackato.


Zero-downtime Upgrades
^^^^^^^^^^^^^^^^^^^^^^

On Stackato clusters with redundant components, the upgrade will result
in no down time for user applications which:

* use an external data services (e.g. via a :ref:`Service Broker <add-service-brokers>`)
* are running at least two instances

The cluster must have the following redundant roles:

* at least :ref:`two Routers (behind a Load Balancer) <cluster-load-balancer>` 
* at least two DEA nodes


Upgrade Problems
----------------

Free Memory
^^^^^^^^^^^

Core/cache nodes require at least 1GB of free memory for upgrades to run
successfully. Other nodes require at least 512MB.

Use the ``free`` or ``vmstat`` commands to determine how much memory is
available on each VM, and use ``kato stop ...`` to temporarily shut off
roles if more memory is required. 

Network
^^^^^^^

Network connectivity errors during the upgrade process can cause it to
fail. In such cases, it's possible to resume the upgrade once
connectivity to the upstream resources is restored.

.. note::
  If network connectivity is a concern, use the ``--download-only``
  option described above to limit the possibility of a network error
  during upgrade.
  
App Store Proxy Settings
^^^^^^^^^^^^^^^^^^^^^^^^

Proxy settings for the App Store may be lost during an upgrade. If
the App Store cannot fetch data after an upgrade, and your system is
behind an HTTP(S) proxy, reset the proxy information for your network as
described in the :ref:`Proxy Settings <server-config-http-proxy>`
instructions. 

Missing ``kato`` Utility
^^^^^^^^^^^^^^^^^^^^^^^^

If the ``kato upgrade`` command exits during the installation of the
``stackato-kato`` package, it is possible that ``kato`` itself can go
missing (removed before the upgraded package is fully installed).

To recover from this state:

#. Find the command and options ``kato`` used to initiate the upgrade.
   For example::

    $ tac /s/logs/sentinel-cli.log | grep -m1 'Running with command'
    INFO  Sentinel::CLI : Running with command: bin/sentinel upgrade 3.4.1 127.0.0.1 192.168.20.11 --skip-download

#. ``cd /s/code/sentinel/cli``

#. Copy the output after 'Running with command:' and run it. For
   example::

    $ bin/sentinel upgrade 3.4.1 127.0.0.1 192.168.20.11 --skip-download


Upgrading with Customizations 
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Many files and directories in the Stackato VM are overwritten during an
upgrade. The instructions in the :ref:`Theming and Customization
<customize>` section use techniques which are safe for upgrades, but
some customers may wish to modify the system further than what has been
documented.

Customizations made within the following directories will be deleted or
undone during an upgrade:

* */s/code/aok*
* */s/code/console*
* */s/code*

Customizations made in the following directories may also be lost:

* */s/etc/*: modifications to existing files will be lost; new files
  will not be touched (unless the filename conflicts with a new one)
* */s/static/*: new files will survive, modifications to existing
  clients will be lost

If you have made customizations in these places or in other areas not
described in the customization instructions, save the new or modified
files elsewhere, run upgrade on a non-production system, then copy or
merge the files into the upgraded test system.

Custom Buildpacks
^^^^^^^^^^^^^^^^^

.. warning::
  Any custom buildpacks added to the system prior to the upgrade will be
  lost.
  
Custom buildpacks should be restored to the system after an upgrade
using the :ref:`stackato create-buildpack <command-create-buildpack>`
command (see :ref:`Adding Buildpacks <add-buildpack>`).

Clearing Browser Cache
----------------------

After a Stackato system has been upgraded, certain :ref:`Management
Console <management-console>` JavaScript and CSS files may persist in the browser.
For example, Firefox users may see the following error in the
Applications view::

  sconsole.cf_api.settings is undefined

If you are scheduling an upgrade, notify the system users that it may be
necessary to clear their browser cache for the web console (e.g.
"Ctrl+Shift+F5" rather than "F5").

Restaging Apps Behind a Proxy
-----------------------------

When migrating applications from 2.10.x to 3.x, applications with broken
support for ``https_proxy`` may fail during staging (or pre-running
hooks) because ``https_proxy`` is now always defined during these
stages, even when there is no upstream proxy behind the :ref:`builtin
polipo proxy <server-config-http-proxy-cache>`.

