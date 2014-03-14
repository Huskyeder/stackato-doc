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


Proxy settings
^^^^^^^^^^^^^^

The systems being upgraded will need to be able to access the following
public URIs:

* https://upgrade.stackato.com
* https://pkg.stackato.com

This may require setting the HTTPS_PROXY environment variable on each
node if a proxy is in use on your network.

RSA keys
^^^^^^^^

For cluster upgrades, you should `set up SSH keys for password-less
authentication
<https://help.ubuntu.com/community/SSH/OpenSSH/Configuring#disable-password-authentication>`__
between the Core node and all other cluster nodes. Without this, you
will be prompted for the 'stackato' system user password multiple times
for each node. 

Executing the upgrade
---------------------

Upgrading an individual node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To upgrade an individual node, log into the node and run::

  $ kato node upgrade
  
This will start the ‘Node Upgrade Process' described below.

Upgrading a cluster
^^^^^^^^^^^^^^^^^^^

To upgrade a cluster, log into the Core node in the cluster and run::

  $ kato node upgrade --cluster
  
This will automatically arrange the nodes in the cluster into a
preferred upgrade order (see below) before upgrading the nodes one at a
time.

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