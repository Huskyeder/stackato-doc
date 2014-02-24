.. _app-autoscaling:

.. index:: Application Autoscaling

Application Auto-Scaling
========================

Stackato can automatically scale the number application instances within
a specified range based on the average CPU utilization across all
instances.

The auto-scaling behavior can be configured in the :ref:`Management
Console <user-console-app>`, in the :ref:`stackato.yml config file
<stackato_yml-scaling>`, or using the :ref:`stackato client
<command-scale>` by setting CPU thresholds for scaling events, and
a minimum and maximum number of application instances.

CPU Threshold
-------------

The minimum and maximum **CPU Threshold** values specify the upper and
lower limits where scaling operations will occur. 

* **Maximum**: If the CPU utilization exceeds the maximum for over a
  minute, Stackato adds instances to the application pool until the CPU
  utilization drops below the maximum threshold or the maximum specified
  number of instances is reached.
  
* **Minimum**: If the CPU utilization drops below the minimum, Stackato
  removes instances from the pool until the average climbs above the
  minimum threshold, or the minimum specified number of instances is
  reached.

CPU utilization is measured as a moving average across all currently
running instances of the application. Since new application instances
may take some time to start, they are added or removed at a maximum rate
of one per minute to allow for more accurate measurement of the new
average as load is redistributed.

With the CPU threshold values unset, no application auto-scaling will
occur. The Management Console will display minimum and maximum values of
0%.

Instances
---------

The **Instances** values set the minimum and maximum number of instances
in the application pool. 

When scaling values are set, they override the ``instances`` setting for
the application, scaling the application up or down as required into the
specified range.

