.. index:: Buildpack

.. _buildpacks:

Buildpacks
==========

`Buildpacks <https://devcenter.heroku.com/articles/buildpacks>`__ are
bundles of detection and configuration scripts which set up containers
to run applications. For a short introduction to writing buildpacks, see
`this presentation <http://talks.codegram.com/heroku-buildpacks>`_.

.. note::
  In Stackato 3.0 (Cloud Foundry v2 API) and later, application
  deployment is done *primarily* using buildpacks, and the syntax for
  specifying which buildpack to use has changed. Instead of using a
  BUILDPACK_URL environment variable, set the buildpack's Git URL in
  a ``buildpack:`` key at the top level of *stackato.yml*.

Buildpacks are the recommended method for deploying applications to
Stackato, replacing the built-in frameworks used in previous versions.

.. _buildpacks-built-in:

Built-In Buildpacks
-------------------

For convenience a few buildpacks are bundled with Stackato:

* `Python <https://github.com/ActiveState/stackato-buildpack-python>`__
* `Java <https://github.com/cloudfoundry/java-buildpack>`__
* `Node.js <https://github.com/cloudfoundry/heroku-buildpack-nodejs>`__
* `Ruby <https://github.com/ActiveState/heroku-buildpack-ruby>`__

Stackato will cycle through the ``detect`` scripts of the built-in
buildpacks prior to staging to match the code you are pushing. For most
applications using the languages above, no Stackato-specific
configuration is required.

.. _buildpacks-legacy:

Legacy Buildpack
----------------

The legacy buildpack is is special meta-buildpack for deploying
applications configured for Stackato 2.x (Cloud Foundry v1 API) without
the need for extensive reconfiguration. This buildpack has updated
versions of all the frameworks available in previous versions of
Stackato.

To use the Legacy buildpack: specify the ``framework:`` ``type:`` for your
application (e.g. php, play, rails3, sinatra, java_web, java_ee, etc.). You can
optionally set a specific ``runtime:`` as well. For example::

    name: bottle-py3
    framework:
      type: python
      runtime: python32  

.. note::
  When using the Legacy Buildpack, config-defined environment variable
  values can only be updated by re-pushing the application with new
  settings (see :ref:`Legacy Buildpack and Environment Variables
  <known-issues-legacy-env>`).

.. _buildpacks-custom:

Custom Buildpacks
-----------------

To specify the exact buildpack to use for deploying your application,
set a top-level ``buildpack:`` key in *stackato.yml* to the URL of the
buildpack's Git repository. For example::

    name: myrubyapp
    mem: 256MB
    buildpack: https://github.com/ActiveState/stackato-buildpack-ruby.git

You can use a specific branch by specifying it at the end of the URL
using the following format::

    buildpack: https://github.com/ActiveState/stackato-buildpack-ruby.git#branchname

There are hundreds of buildpacks available on Github. Searching Github
for the term '`buildpack <https://github.com/search?q=buildpack>`__ '
and the name of the language or framework you wish to deploy may provide
you with a working solution, or at least the starting point for your own
custom buildpack.

  
Third-Party Buildpack Examples
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* `Jekyll <https://github.com/ActiveState/heroku-buildpack-jekyll/>`_

* `PyPy <https://github.com/ActiveState/heroku-buildpack-pypy>`_

* `Python and Django
  <https://github.com/heroku/heroku-buildpack-python>`_ - 
  `unofficial documentation 
  <https://devcenter.heroku.com/articles/python>`__

* `Scala <https://github.com/heroku/heroku-buildpack-scala>`_ -
  `unofficial documentation
  <https://devcenter.heroku.com/categories/scala>`__

* `Sphinx Documentation <https://github.com/craigkerstiens/heroku-buildpack-sphinx>`_

  * `Sphinx example <https://github.com/Stackato-Apps/sphinx-demo>`_

Not all third-party buildpacks work with Stackato due to environmental
differences (e.g. relying on certain executables or libraries in
specific locations in the container). Buildpacks should be examined and
tested before being used in production deployments.

.. note::
  Using ``config_vars`` in a buildpack's *bin/release* to set
  environment variables has been deprecated. `Use a shell script in
  $HOME/.profile.d <https://devcenter.heroku.com/articles/profiled>`__
  instead.

  
.. _buildpacks-procfile:

Procfile
--------

Buildpacks will usually contain a ``default_process_type`` setting with
the command used to start the application process. If your application
needs a custom command to start the process, create a `Procfile
<https://devcenter.heroku.com/articles/procfile>`__ in the base
directory of your application.

The ``Procfile`` will should contain a single line with the ``web:``
process for the application defined. For example::

  web: bundle exec rails server -p $PORT

Unlike Heroku, Stackato does not support multiple process types in the
Procfile. To launch a ``worker`` process, create a separate app without
a URL (i.e. with an empty ``url: []`` in *stackato.yml*).

  
Buildpack Example: Java
-----------------------

First, in ``stackato.yml`` you will need to define the the buildpack
url. Here is the pet-clinic stackato.yml::

    name: pet-clinic
    mem: 512M
    buildpack: https://github.com/heroku/heroku-buildpack-java.git
    services:
      ${name}-db: mysql

As it is a buildpack application, you also need to create a ``Procfile``
in which you declare how you want your application to be executed. Here
is the one from pet-clinic::

    web: java $JAVA_OPTS -jar target/dependency/jetty-runner.jar --port $PORT target/*.war

And finally, add the jetty dependency in your ``pom.xml`` in order to run your application::

    <build>
        ...
        <plugins>
            ...    
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-dependency-plugin</artifactId>
                <version>2.3</version>
                <executions>
                    <execution>
                        <phase>package</phase>
                        <goals><goal>copy</goal></goals>
                        <configuration>
                            <artifactItems>
                                <artifactItem>
                                    <groupId>org.mortbay.jetty</groupId>
                                    <artifactId>jetty-runner</artifactId>
                                    <version>7.5.4.v20111024</version>
                                    <destFileName>jetty-runner.jar</destFileName>
                                </artifactItem>
                            </artifactItems>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>


