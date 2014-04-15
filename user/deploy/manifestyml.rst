.. index:: manifest.yml
.. _manifest_yml:

Manifest.yml Options
====================

Using a *manifest.yml* file is an alternative to *stackato.yml* which
allows for specific customizations such as pushing more than one app
with dependencies. It is the standard configuration file format for all
Cloud Foundry systems, allowing for portability from those systems to
Stackato without configuration changes. See `Application Manifests
<http://docs.cloudfoundry.org/devguide/deploy-apps/manifest.html>`_
for the canonical documentation.

As with *stackato.yml*, the client uses the keys to determine values
that are otherwise passed by the user as arguments or as answers
to prompts. 

The options below are specific to the *manifest.yml* file. Most
*stackato.yml* keys (see :ref:`stackato.yml Options <stackato_yml>`) can
also be declared in *manifest.yml*. Those that cannot are listed in the
:ref:`stackato <manifest-yml-stackato>` section below.

.. note::
    
    Options in :ref:`stackato.yml <stackato_yml>` take precedence over
    those declared in *manifest.yml*. Detailed specifications for these
    configuration files can be found in the `stackato-cli source
    repository <https://github.com/ActiveState/stackato-cli/>`_:

    * `stackato.yml specification <https://github.com/ActiveState/stackato-cli/blob/master/doc/stackato.yml.txt>`__
    * `manifest.yml specification <https://github.com/ActiveState/stackato-cli/blob/master/doc/manifest.yml.txt>`__
    * `stackato.yml to manifest.yml key mappings <https://github.com/ActiveState/stackato-cli/blob/master/doc/stackato-2-manifest.txt>`__

applications:
^^^^^^^^^^^^^

This key contains a list of options corresponding to individual apps to
be pushed. Each sub-key should match the name of folders where the
files for each app are contained. For example::

  applications:
    web:
      name: springweb
      framework:
        name: spring
      instances: 1
      mem: 512
    worker:
      name: springweb-helper
      framework:
        name: node
      instances: 1
      mem: 64

Here the two keys ``web:`` and ``worker:`` match subdirectories (named
``web`` and ``worker``) of the directory containing the *manifest.yml*
file.

The shortcut "." can be used if the application code is in the top level
directory along with the *manifest.yml* file::

  applications:
    .:
      name: singleapp
      buildpack: https://github.com/cloudfoundry/ibm-websphere-liberty-buildpack.git
      instances: 1
      mem: 512

.. _manifest_yml-buildpack:

buildpack:
~~~~~~~~~~

You can manually specify the Git repository URL for the :ref:`buildpack
<buildpacks>` used to deploy the application, as seen in the example
above. 
  
You can use a specific branch by specifying it at the end of the URL
using the following format::

  buildpack: https://github.com/cloudfoundry/heroku-buildpack-nodejs.git#profile

If unset, Stackato will check to see if the application triggers the
``detect`` scripts in any of its :ref:`built-in buildpacks
<buildpacks-built-in>`.

depends-on:
^^^^^^^^^^^

When deploying multiple applications from a single *manifest.yml* use
the ``depends-on:`` key to set the order in which the apps are started
and stopped. An app with the ``depends-on:`` option will be pushed only
after the listed apps have been pushed and are running on the server.

In the previous example, if you wanted to ensure that ``web`` was
started before ``worker``, you would add ``depends-on: worker`` in the
``web:`` section::

  applications:
    web:
      depends-on: worker
      name: springweb
      framework:
        name: spring
      instances: 1
      mem: 512
    worker:
      name: springweb-helper
      framework:
        name: node
      instances: 1
      mem: 64

If an app is stopped or restarted, the process happens in the reverse
order.

.. _manifest-yml-stackato:

stackato:
^^^^^^^^^

The following Stackato-specific options need to be placed in a
``stackato:`` block within the application block.

* processes:
* min_version:
* env:
* ignores:
* hooks:
* cron:
* requirements

For example::

  applications:
    .:
      name: celery-demo
      framework:
        name: python
        runtime: python27
      mem: 128
      stackato:
        env:
          CELERY_ENV:
            default: crisper
        processes:
          web: celeryd
        requirements:
          pypm: [celery]
        hooks:
          pre-running:
            - sudo cp $HOME/fstab /etc/fstab
            - sudo mount /dev/shm
        min_version:
          server: 0.9.0.143
          client: 1.0


.. note::
  The ``env`` key in *manifest.yml* must use the more verbose
  :ref:`env attributes <stackato_yml-env-attributes>` syntax rather than
  the simpler "ENV_VAR: value" format allowed in *stackato.yml*.
