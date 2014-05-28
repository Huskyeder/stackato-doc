.. _app-versions:

.. index:: App Versions

App Versions
============

When you update an application by pushing new code or modifying
settings, Stackato keeps track of the changes and allows you to rollback
to previous versions using the App Versions interface in the Management
Console or :ref:`stackato rollback <command-rollback>` command.

Each change is assigned a version number, starting with "v1" for the
first push, and a short description summarizing the change (e.g. "pushed
new code", "changed memory to 512MB"). The number of versions available
for rollback will depend on the number of code changes made and the
Total Droplets limit in the organization's quota plan.


Using App Versions
------------------

To view the list of tracked versions for an application:

* use the :ref:`stackato versions <command-versions>` command, or
* open the :ref:`App Versions view <user-console-app>`.

To rollback to a previous version:

* use the :ref:`stackato rollback <command-rollback>` CLI command, or
* click the **Rollback to this version** button in the :ref:`App
  Versions view <user-console-app>` corresponding to the desired version.


App Version Cutover
-------------------

When a code push, a settings change, or a rollback happens the current
version of the application continues serving requests until the new
version is up and able to respond. There is no down time during the
switch to the new version.


Saved Droplets
--------------

Each code change to an application (``stackato push``) results in the
creation of a new "droplet" containing the packaged application. The
system keeps a certain number of these droplets (5 per application in
the "default" quota plan) in a "most recently used" list.

When the droplet limit is exceeded, the oldest (least recently used)
droplet is removed to make way for the new droplet. 


Version Rotation
----------------

An app's version is the combination of its droplet and its settings.

Stackato can track an infinite number of settings changes, but keep only
a finite number of droplets. When a droplet is removed from the MRU
list, app versions which depend on it are also removed from the list.



