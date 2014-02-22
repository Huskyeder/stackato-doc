.. _app-autoscaling:

.. index:: Application Autoscaling

Application Auto-Scaling
========================

Stackato can automatically scale the number application instances within
a specified range, based on the average CPU utilization across all
instances.

CPU Threshold
-------------

The minimum and maximum CPU Threshold values specify the upper and lower
limits where scaling operations will occur. 

* If the CPU utilization exceeds the maximum for over a minute, Stackato
  adds instances to the application pool until the CPU utilization drops
  below the maximum threshold or the maximum specified number of
  instances is reached.
  
* If the CPU utilization drops below the minimum, Stackato removes
  instances from the pool until the average climbs above the minimum
  threshold, or the minimum specified number of instances is reached.

Instances
---------

The Instances values set the range for the number of instances in the
pool.

When scaling values are set, they override the ``instances`` setting for
the application, scaling the application up or down as required into the
range specified.

