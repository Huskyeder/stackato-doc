.. index:: Harbor
.. _harbor:

Harbor: TCP/UDP Port Service
============================

The Harbor service provisions ports to user applications. The standard
router in Stackato is designed for HTTP(S) traffic only, if user
applications require other protocols, consider setting up Harbor.

Information on using the Harbor port service with deployed applications
is in the :ref:`Port Service (Harbor) documentation <port-service>`.

Architecture
------------

A Harbor node is designed to sit on the edge of the cluster network
(i.e. with a publicly routable network interface) in a similar fashion
to the router component. This allows it to effectively proxy external
and internal traffic from your app to the outside world and vice versa.

Unlike the router component which normally only requires 80/HTTP and
443/HTTPS ports to be externally visible, a Harbor node will
automatically provision ports from a pre-configured range.

The harbor node learns about new routes for each provisioned service
from the DEAs. When an application instance bound to a Harbor service on
a DEA is terminated (stopped, failed, or scaled down), Harbor will also
drop that instance from its list of backends available for the
externally facing port.

.. _harbor-setup:

Requirements & Setup
--------------------

A Stackato VM can be configured as a Harbor node in the same way as
other :ref:`data service roles <server-cluster-data-services>`. For
example:

.. parsed-literal::

 	$ kato node attach -e harbor *CORE_IP*

The node must be routable both externally by connecting clients, and the
internal DEA nodes must be contactable by the Harbor node. You must also
make allowances for any firewall rules so that the provisioned port
range used by Harbor is open to the external network.

The default range for these ports is '35000 - 40000', however you can
view the current port range on the Harbor node by entering::

  $ kato config get harbor_node port_range

For each new service provisioned, Harbor will chose a random unassigned
port from this range. This range can be set in the Management Console's
:ref:`Settings <console-settings>` section, or by using the ``kato
config set ...`` command.

A Harbor node can run standalone, or on the same node as your router.
This may be the preferred option if you wish to use the same DNS name for
Harbor and Router services. Otherwise, create a new DNS entry for the
harbor node, so that consumers of the port do not have to address it by
its external IP.

If you are setting a different IP / DNS name for this port you
should update the node config so that it provides these external
connection details to the users service credentials.

To set the externally routable hostname::

  $ kato config set harbor_node hostname_external ext-services.example.com

To set the externally routable IP::

  $ kato config set harbor_node host_external 192.0.43.10



Troubleshooting
---------------

If you have problems with the Harbor service, first check the status via
'kato status'.

The Harbor service can be safely restarted; any ports and routes
provisioned are automatically added and the backends are re-validated on
startup::

  $ kato restart harbor

Check the log files for errors and warnings. Four Harbor log files can
be found in the */s/logs/* directory::

* harbor_gateway.log
* harbor_node.log
* harbor_proxy_connector.log
* harbor_redis.log

No Stackato processes should conflict with the default Harbor port
range. However, in systems with additional custom processes running,
other processes may assume control of a port within Harbor's port range.
This condition which will show up in *harbor_proxy_connector.log*.

You can avoid these conflicts by setting the Harbor port range to avoid
conflicting processes. To resolve an accidental conflict, change the port
used by the conflicting application and restart. Any user application
using the port in conflict should be restarted to force Harbor to
re-listen on that port.
