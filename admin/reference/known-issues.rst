.. index:: Known Issues

Known Issues
============


.. _known-issues-changing-mbus-ip:

Changing the MBUS IP (Core node)
--------------------------------

If the IP address of the Core node changes, you must reconfigure the
cluster to use the new MBUS IP address. Run :ref:`kato node migrate
<kato-command-ref-node-migrate>` (or :ref:`kato op static_ip
<server-config-static-ip>`) on the Core node, then :ref:`kato node
attach <server-cluster-attach>` on all other cluster nodes.

This updates most of the relevant Stackato configuration settings, but
the following additional :ref:`kato config <kato-command-ref-config>`
paths need to be updated with the new IP address for the cluster to
work::

  /cloud_controller_ng/message_bus_servers
  /dea_ng/nats_servers
  /logyard/drains/builtin.timeline
  /stackato_rest/message_bus_uri

For example, for a Core node that has moved to the IP address 10.0.0.72,
the following commands would need to be run::

  $ kato config set cloud_controller_ng message_bus_servers '["nats://10.0.0.72:4222/"]' --json
  $ kato config set dea_ng nats_servers '["nats://10.0.0.72:4222/"]' --json
  $ kato config set logyard drains/builtin.timeline tcp://10.0.0.72:9026?filter=event&format=json
  $ kato config set stackato_rest message_bus_uri nats://10.0.0.72:4222/
  

.. _known-issues-ec2-autoscaling-dea:

security_groups_ids in autoscaling.yaml
---------------------------------------

The ``security_group`` key in the EC2 section of *autoscaling.yml* has
been changed to ``security_group_ids``. Specify the AWS Security Groups
by ID rather than name in this setting.

If you are upgrading a Stackato cluster that already has DEA autoscaling
configured, the settings should be manually modified to use the new key. 

.. _known-issues-php5-repos:

PHP 5.5 Repositories
--------------------

Stackato ships with PHP 5.5 in the default Docker image. This version is
more recent than the one available in the standard Ubuntu repositories.

To get updates for PHP 5.5 or add additional modules (globally or as
user-defined requirements for applications), a third-party package
repository must be added to the Allowed Repos list.

Stackato administrators can add the `PPA for PHP 5.5 maintained by
Ondřej Surý <https://launchpad.net/~ondrej/+archive/php5>`_, or a
different repository supporting compatible packages:

* Using ``kato``::

    kato config push cloud_controller_ng allowed_repos \
    "deb http://ppa.launchpad.net/ondrej/php5/ubuntu precise main"

* In the :ref:`Management Console settings <console-settings-stackato>`



.. _known-issues-data-users:

kato data users export|import broken
------------------------------------

The ``kato data users export`` and ``kato data users import`` commands
(for saving and loading lists of users to and from CSV files) are
non-functional in the current release. The :ref`kato data import
<kato-command-ref-data-import>` and :ref:`kato data export
<kato-command-ref-data-export>` commands are still available for
migrating users from one Stackato system to another.


.. _known-issues-node-reset-factory:

kato node reset factory with NOPASSWD
-------------------------------------

The ``kato node reset factory`` command will not work if ``NOPASSWD``
has been set for the ``stackato`` account in */etc/sudoers*. To work
around this, revert the change to */etc/sudoers* before resetting or
start over with a new Stackato VM.


.. _known-issues-logs-missing-from-cloud-events:

Cloud Events not gathering logs from some processes
---------------------------------------------------

Certain Stackato processes noted below use non-standard logging
formats and are therefore not included in the Cloud Events log stream
(e.g. in the Cloud Events view of the Management Console).

* ``router2g`` (Stackato router); manually inspect */s/logs/router2g.log* on Router nodes.
* ``stackato_rest`` (Stackato-specific web service); manually inspect */s/logs/stackato_rest.log* on Controller nodes.
* ``harbor_proxy_connector`` (Harbor); manually inspect */s/logs/harbor_proxy_connector.log* on Harbor nodes.
* ``cc_upload_server`` (CC upload server); manually inspect */s/logs/cloud_controller_upload_server.log* on Controller nodes.
* ``stackato-tty.log`` (Stackato TTY console); manually inspect */s/logs/stackato-tty.log* on all nodes.

.. _known-issues-config_vars:

Buildpack config_vars Deprecated
--------------------------------

Buildpacks used to rely on the ``config_vars`` feature of *bin/release*
to set environment variables, but this has been deprecated by Heroku.

The replacement mechanism is to `create a shell script in 
$HOME/.profile.d <https://devcenter.heroku.com/articles/profiled>`__ to
set environment variables. This mechanism is fully supported in Stackato
3.0 / Cloud Foundry v2, and is used by all of the built-in buildpacks.


.. _known-issues-legacy-env:

Legacy Buildpack and Environment Variables
------------------------------------------

When using the :ref:`Legacy Buildpack <buildpacks>`, environment
variable values defined in *stackato.yml* (``env:`` block) cannot be
updated without re-pushing the application with new settings. Changes to
variables made in the Management Console will be overwritten by the
original ones defined at push when the application is restarted.

To modify custom environment variables, re-push the application after
changing the values in *stackato.yml*.

.. _known-issues-rabbit-import:

Importing Apps using RabbitMQ 2.4
---------------------------------

Stackato 2.10 shipped with RabbitMQ 2.4 ('rabbitmq' service) enabled by
default. Stackato 3.0 has RabbitMQ 2.4 and 3.1, ('rabbitmq' and
'rabbitmq3' respectively) but both are disabled by default. If you are
importing RabbitMQ 2.4 service data from a 2.10 cluster using ``kato
data import`` be sure you have the 'rabbitmq' service enabled first.

Note that there are `changes in RabbitMQ 3.0
<http://www.rabbitmq.com/blog/2012/11/19/breaking-things-with-rabbitmq-3-0/>`__
which are incompatible with version 2.4.

Service Gateway Log Errors in Maintenance Mode
----------------------------------------------

With Stackato set in :ref:`Maintenance Mode <console-settings>`, all
"_gateway" processes will report the following error once per minute::

  Failed registering with cloud controller, status=503

This is normal, and can be safely ignored. The service nodes will 
reconnect once the Controller is taken out of Maintenance Mode.


Nodes with FATAL or perpetually STARTING processes
--------------------------------------------------

If the Core node of a Stackato cluster is offline for more than 90
seconds, ``kato status`` will show processes on other nodes (systail,
apptail, router and others) in a FATAL or (hung) STARTING state. These
processes will not automatically reconnect to the Core node.

To correct this, run ``kato start`` (for FATAL processes) or ``kato
restart`` (for STARTING processes) on all affected nodes. 


Avoiding App Reliance on IP Addresses
-------------------------------------

Cluster configurations make use of private IP addresses for identifying the various cluster nodes.
Best practice is to avoid the literal use of these addresses wherever possible, as these addresses
are subject to change with cluster configuration.

If the VM instance can locally resolve a hostname rather than an IP address, it's generally best
practice to use the hostname.

If not, Stackato provides various
:ref:`environment variables <environment-variables>`
so that applications do not need to hardcode them at install time.
Some examples are ``VCAP_SERVICES``, ``STACKATO_SERVICES``, and ``DATABASE_URL``.
We strongly encourage their use.

A known issue is that some applications have install procedures that can't be configured to make
use of these variables.  If the server that's providing the app's database
(mysql_gateway/node for example) gets moved to another location, the only way for the app to
become aware of the new credentials is by restaging the app as noted below.
A restart isn't sufficient.

Choose one of the following according to need, either::

	$ stackato delete -n
	$ stackato push -n

or::

	$ stackato delete -n
	$ stackato update -n 

Another possible workaround in such cases is to write a script that will pull the credentials
from ``VCAP_SERVICES`` and update the app's config as needed, then add this script to the
pre-running hooks.


Community Forums
----------------

Please keep up to date with the latest Known Issues, FAQs and announcements in our `online Stackato forums <http://community.activestate.com/forum/stackato>`_.
