.. _add-buildpack:

.. index:: Adding Buildpacks
.. index:: Admin Buildpacks

Adding Buildpacks
=================

Stackato has a number of built-in :ref:`buildpacks <buildpacks>`
installed by default. Administrators can install additional buildpacks
with the :ref:`stackato create-buildpack <command-create-buildpack>`
command, making them available to developers pushing applications.


Building Packages
-----------------

Buildpacks are normally hosted in Git repositories with a standard
structure described in Heroku's `Buildpack API documentation
<https://devcenter.heroku.com/articles/buildpack-api>`__. These
repositories can be packaged into .zip archives and uploaded to Stackato
alongside the other built-in buildpacks.

Built-in buildpacks come in two types:

* **Online** buildpacks fetch dependencies and artifacts from the
  internet during application staging.
  
* **Offline** buildpacks bundle all software dependencies the
  application needs. The buildpack .zip files are typically much larger,
  but can stage and run applications on DEA nodes without access to the
  internet.
  
.. note::
  Stackato ships with online buildpacks to keep the size of the VM to a
  minimum. Once the system is set up, changing these to offline versions
  can improve staging times substantially.

Examples of buildpacks with offline versions are:

* `cloudfoundry/buildpack-ruby <https://github.com/cloudfoundry/buildpack-ruby>`__
* `cloudfoundry/java-buildpack <https://github.com/cloudfoundry/java-buildpack>`__

When run with "offline" options, the *bin/package* script or ``package``
build target for these buildpacks fetch the external assets and bundle
them in the .zip file. See their respective README files for more
information.

Buildpack Order
---------------

When users push applications to the system without
:ref:`specifying an external buildpack <stackato_yml-buildpack>`
Stackato cycles through the ``detect`` scripts of the installed
buildpacks looking for one to match the pushed application type. The
first buildpack to match the application detection heuristics will stage
and run the pushed application.

The order in which these ``detect`` scripts are run is displayed by the
:ref:`stackato buildpacks <command-buildpacks>` command. These are the
defaults::

  $ stackato buildpacks
  +---+---------+-------------------------------+---------+--------+
  | # | Name    | Filename                      | Enabled | Locked |
  +---+---------+-------------------------------+---------+--------+
  | 1 | java    | java-buildpack.zip            | yes     | no     |
  | 2 | ruby    | heroku-buildpack-ruby.zip     | yes     | no     |
  | 3 | nodejs  | heroku-buildpack-nodejs.zip   | yes     | no     |
  | 4 | python  | stackato-buildpack-python.zip | yes     | no     |
  | 5 | go      | heroku-buildpack-go.zip       | yes     | no     |
  | 6 | clojure | heroku-buildpack-clojure.zip  | yes     | no     |
  | 7 | scala   | heroku-buildpack-scala.zip    | yes     | no     |
  | 8 | perl    | stackato-buildpack-perl.zip   | yes     | no     |
  +---+---------+-------------------------------+---------+--------+
  
To change the order, use the :ref:`stackato update-buildpack
<command-update-buildpack>` command to set the ``--position`` of the
specified buildpack in this queue::

  $ stackato update-buildpack --position 1 python
  Updating buildpack [python] ...
    Position ... Changed to 1
    Enabled  ... Unchanged
    Locked   ... Unchanged
  OK

Built-in buildpacks can be enabled or disabled using the ``--enable``
and ``--disable`` options for this command.

