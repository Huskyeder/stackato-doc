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

Proxy settings for Upgrades
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The systems being upgraded will need to be able to access the following
public hosts:

* upgrade.stackato.com
* docker.stackato.com

See :ref:`Proxy Settings <server-config-http-proxy>` for instructions on
configuring upstream proxies for Stackato.


RSA keys
^^^^^^^^

For cluster upgrades, you should `set up SSH keys for passwordless
authentication
<https://help.ubuntu.com/community/SSH/OpenSSH/Configuring#disable-password-authentication>`__
between the Core node and all other cluster nodes. Without this, you
will be prompted for the 'stackato' system user password each time
``kato`` makes a remote connection to the other nodes in the cluster. 


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
the files required for a subsequent upgrade, but not execute the upgrade
itself::

  $ kato node upgrade --download-only --cache-ip <Core node IP>
  
This is done to break up the process into two steps, downloading and
upgrading. This first step can be done while the system is operating
normally (i.e. not in Maintenance Mode). The subsequent upgrade should
be faster (files are fetched from a cache within the cluster) so the
operation can be accomplished in a shorter maintenance window.

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

* use an external data services (e.g. via a :ref:`Service Broker <add-service-broker>`)
* are running at least two instances

The cluster must have the following redundant roles:

* at least :ref:`two Routers (behind a Load Balancer) <cluster-load-balancer>` 
* at least two DEA nodes


Upgrade Problems
----------------

Network connectivity errors during the upgrade process can cause it to
fail. In such cases, it's possible to resume the upgrade once
connectivity to the upstream resources is restored.

.. note::
  If network connectivity is a concern, use the ``--download-only``
  option described above to limit the possibility of a network error
  during upgrade.
  

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

