.. _dea-zones:

.. index:: DEA Availability & Placement Zones

Availability & Placement Zones
==============================

Stackato has two mechanisms for allocating application instances on
particular Droplet Execution Agent (DEA) nodes or groups of nodes:

* **Availability Zones**: for distributing application instances across
  groups of servers in different physical locations, network segments,
  or racks.

* **Placement Zones**: for restricting application instances to
  particular sets of servers.
  
Both zone types are set in the ``placement_properties`` configuration on each
DEA node, which can be set with ``kato node`` sub-commands.

See also :ref:`Availability & Placement Zones <deploy-zones>` in the User Guide.
  
  
.. _dea-zones-availability:

Availability Zones
------------------

Setting availability zones allows a cluster administrator to configure Stackato
to respect the physical/logical distribution of servers. In this sense, they
similar to availability zones or regions in EC2. 

If there are multiple availability zones configured in a Stackato system,
application instances are evenly distributed among zones as much as possible.
For example, if there are 3 instances of an application and 3 availability
zones, 1 instance will be deployed in each zone.

This significantly improves HA and quick disaster recovery. If an entire
data center or availability zone goes offline, the app will remain
running with little or no down time.

By default, all DEAs are part of the 'default' availability zone. To set
a zone, use the :ref:`kato node availabilityzone
<kato-command-ref-node-availabilityzone>` command.

For example, to see the current availability zone of a DEA::

  $ kato node availabilityzone
  Availability zone on node 10.0.0.41 is 'default'.
  
To set the availability zone::

  $ kato node availabilityzone region-b
  Availability zone on node 10.0.0.41 is 'region-b'.
  

.. _dea-zones-placement:

Placement Zones
---------------

Placement Zones allow application instances to be limited to a certain
set of DEA nodes. Admins can tag DEAs with a certain set of security
policies or hardware characteristics with placement zones, allowing
users deploying applications to choose which group of servers to run
instances of a particular application on.

For example, users can choose to deploy instances of an application only
to a 'production' placement zone. Only those DEA nodes in the
'production' placement zone will receive instances of that application.

DEAs have a ``placement_properties/zones`` key in their node-specific
config where placement zones are specified. These are set with the
:ref:`kato node placementzone <kato-command-ref-node-placementzones-add>`
command. The relevant sub-commands are::

  $ kato node placementzones list
  $ kato node placementzones add [zone]
  $ kato node placementzones remove [zone]

When deploying an application instance to a placement zone, the Cloud
Controller chooses which DEA nodes receive the instance, prioritizing
the DEA that is running the fewest instances of the app already. This
maintains an even distribution of instances of any one app across the
DEAs in the placement zone.

DEAs tagged with multiple zones will accept applications for any of
those zones.

By default, apps are deployed into the 'default' zone. DEAs that don't
register *any* zone will also accept apps for the 'default' zone
(maintaining backwards compatibility). 

Zones are strictly enforced. If an application requests the 'production'
zone, and the DEA doesn't advertise it, the app will never be deployed
to that DEA. If an app attempts to use this zone and *no* DEAs in the
cluster provide it, the app will not deploy, displaying an error during
``stackato push``.

