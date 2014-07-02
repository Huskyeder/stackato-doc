.. _upgrade:

.. index:: Upgrading Stackato

.. index:: kato upgrade

Upgrading Stackato
==================

Stackato 3.0 provides the ability to upgrade a node or cluster in place
via :ref:`kato node upgrade <kato-command-ref-node-upgrade>` without the
need to rebuild the entire cluster. This section covers how the upgrade
process works.


Before an upgrade
-----------------

Patching Stackato
^^^^^^^^^^^^^^^^^

Some updates available via :ref:`kato patch <kato-command-ref-patch>`
may be necessary before :ref:`kato node upgrade
<kato-command-ref-node-upgrade>` can be run.

Make sure to :ref:`apply all outstanding patches <bestpractices-patch>`
before proceeding with an upgrade.

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
* pkg.stackato.com
* docker.stackato.com

See :ref:`Proxy Settings <server-config-http-proxy>` for instructions on
configuring upstream proxies for Stackato.


Stackato Caching Proxy
^^^^^^^^^^^^^^^^^^^^^^

Stackato uses a built in caching proxy to minimize the number of
downloads required to complete a cluster upgrade. This is configured
automatically when running ``kato node upgrade --cluster`` (see below).

If you plan on upgrading cluster nodes one at a time, run ``kato node
upgrade --prepare`` **on the Core node** (the VM running the primary
role) before upgrading the nodes individually.

Setup of the caching proxy will be skipped if:

* HTTP_PROXY and http_proxy are already set in the system default
  profile (see :ref:`Proxy settings <upgrade-proxy-settings>` above)
* STACKATO_UPGRADE_SKIP_PROXY_CACHE is set. Use this if you explcitly
  want to skip the caching proxy.

Disabling Stackato's caching proxy will result in a slower upgrade,
since the updated packages and Docker images will be downloaded by each
node in the cluster. 


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


Upgrading a cluster
^^^^^^^^^^^^^^^^^^^

To upgrade a cluster, log into the Core node in the cluster and run::

  $ kato node upgrade --cluster
  
This will automatically arrange the nodes in the cluster into a
preferred upgrade order (see below) before upgrading the nodes one at a
time using the :ref:`Node Upgrade Process
<upgrade-node-upgrade-process>` described below.

Node upgrade ordering
^^^^^^^^^^^^^^^^^^^^^

When performing a cluster upgrade, the nodes in the cluster are
automatically arranged into an upgrade order based on the roles they
have enabled. This order is then followed when upgrading nodes.

The default role order is:

* DEA
* controller
* router
* base
* primary

Nodes are matched to this ordering by the roles they have enabled. Any
nodes that don't match (e.g. data service nodes) are added to the end to
be upgraded last.

.. note::
  The order can be overridden with the :ref:`--role-order
  <kato-command-ref-node-upgrade>` option, but ``kato`` will ensure that
  the Core node (i.e. running the primary role) is always updated last. 

Upgrading an individual node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Automated cluster upgrade (above) is the recommended method for
upgrading a Stackato installation. However, it is possible to upgrade
nodes one at a time if you have specific reasons for doing so, or have
been directed to do so by ActiveState Stackato Support.

.. note::
  Before upgrading any individual nodes, run ``kato node upgrade
  --prepare`` on the Core node.

To upgrade an individual node, log into the node and run::

  $ kato node upgrade
  
This will start the :ref:`Node Upgrade Process
<upgrade-node-upgrade-process>` described below.


.. _upgrade-node-upgrade-process:

Node Upgrade Process
^^^^^^^^^^^^^^^^^^^^

Each node goes through the following process during an upgrade.

#. self-update
#. Stackato version check
#. retire (DEA nodes only)
#. backup state
#. upgrade
#. node restart

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
is available. If the node is a DEA it is then :ref:`retired
<kato-command-ref-node-retire>` to make sure any applications running on
the node are evacuated before the upgrade takes place.

When ``kato node upgrade`` completes successfully, the node is restarted
running the latest version of Stackato.


Upgrade Problems
----------------

Network connectivity errors during the upgrade process can cause it to
fail. In such cases, it's possible to resume the upgrade once
connectivity to the upstream resources is restored.


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


Errors and Latch Files
^^^^^^^^^^^^^^^^^^^^^^

As each module upgrade is completed, a 'latch' file is written to record
that the module was successfully upgraded. Once a module has been
upgraded it will be skipped on any subsequent upgrades. 

The latch files are stored in */var/stackato/upgrade/tmp/module-latches*
and can be manually deleted if required, forcing the corresponding
module to be re-installed.

If something fails, ``kato`` will create a file to specify that the
update has failed. The next time ``kato node upgrade`` is run, ``kato``
will be more tolerant of an inconsistent state (e.g. services missing)
and will allow the upgrade to continue.

If a module fails to upgrade, the upgrade process will halt with an
error. This can happen if required components can't be downloaded (or
are not available in the cluster cache). At this point the cluster or
node upgrade can be run again. Modules that have already been upgraded
successfully will be skipped, and the module that failed will be
retried, starting with the removal of the partly-installed copy.

Once the node has been fully upgraded, the upgrade is recorded as
successfully completed, and all latch files are automatically removed.


Recovering kato
^^^^^^^^^^^^^^^

During the upgrade process, the old version of ``kato`` is removed and a
new version is installed. If the upgrade fails at this point, it is
possible for the system to be left without a working ``kato`` utility,
making it impossible to continue the upgrade.

If you see one of the following errors when trying to resume an upgrade,
it indicates that ``kato`` is missing::

  $ kato node upgrade
  -bash: /home/stackato/bin/kato: No such file or directory

  $ kato node upgrade
  -bash: kato: command not found

To recover from this, run the following command::

  $ /var/stackato/upgrade/fix-kato.sh

This installs the new version of ``kato``, allowing the upgrade to
continue.


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

