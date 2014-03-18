.. index:: Deploying Apps
.. _deploying-apps:

General Deployment
==================

Applications are typically deployed to Stackato by pushing source code
and configuration to the system's API endpoint using the :ref:`stackato
cli client <client>` or other clients that use the Stackato or Cloud
Foundry API. 

The steps for deploying applications will be slightly different
depending on the application and its requirements. Instructions for
deploying the `Stackato sample applications
<https://github.com/Stackato-Apps>`_ can be found in the `README.md`
file of each app.

.. note::
  In Stackato 3.0 and later (Cloud Foundry v2 API), application
  deployment is done primarily using :ref:`Buildpacks <buildpacks>`. A
  special built-in 'Legacy' buildpack handles Stackato v2 frameworks for
  existing application configurations.

Targeting & Authenticating
--------------------------

Before deploying an app, the client must first target Stackato's API
endpoint URL. This will generally be the same URL that exposes the
Management Console. For example::

  $ stackato target api.stacka.to
  Successfully targeted to [https://api.stacka.to]
  ...

Use the ``stackato login`` command to authenticate with your username
and password::

  $ stackato login <username>
  Attempting login to [https://api.stacka.to]
  Password: ******
  Successfully logged into [https://api.stacka.to]

Selecting Org & Space
---------------------

If your account is a member of multiple :ref:`organizations
<orgs-spaces>`, choose which one you want to operate under::

  $ stackato switch-org exampleco

Likewise, if you are a member of more than one space, choose a default
space::

  $ stackato switch-space devel-example

Pushing Application Code
------------------------

Change to the root directory of your source code project, and use the
``stackato push`` command to deploy your application. If you have a
:ref:`stackato.yml <stackato_yml>` or :ref:`manifest.yml <manifest_yml>`
config file in this directory, you can use just::

	$ stackato push -n

The "-n" option is an alias for "--no-prompt", which takes options from
the config YAML file instead of prompting for them.

The output of the push command will be something like::

  $ stackato push -n
  Using manifest file "stackato.yml"
  Application Url: env.stacka.to
  Creating Application [env] as [https://api.stacka.to -> exampleco -> devel-example -> env] ... OK
    Map env.stacka.to ... OK
  Uploading Application [env] ... 
    Checking for bad links ... 80 OK
    Copying to temp space ... 79 OK
    Checking for available resources ...  OK
    Processing resources ... OK
    Packing application ... OK
    Uploading (223K) ... 100% OK
  Push Status: OK
  ...
  stackato.dea_ng: [STAGED_APP] Completed staging application
  stackato.dea_ng.0: [SPAWNING_APP] Spawning app web process: node server.js
  app.0: Server running at
  app.0:   => http://0.0.0.0:50932/
  app.0: CTRL + C to shutdown
  OK
  http://env.stacka.to/ deployed

The ``stackato`` client will show staging and running logs for the
deployment process. To inspect these logs after deployment has finished,
use the :ref:`stackato logs <command-logs>` command.


.. _language-specific-deploy:

Language Specific Deployment
----------------------------

See each of these sections for language specific deployment details and examples:

.. toctree::
   :maxdepth: 1

   buildpack
   languages/clojure
   languages/go
   languages/java
   languages/node
   languages/perl/index
   languages/php
   languages/python/index
   languages/ruby


.NET support via `Mono <http://www.mono-project.com/Main_Page>`_ is
available with a Stackato add-on. Contact
stackato-support@activestate.com for more information and access to the
plugin.

.. _deploy-app-config:

Configuring Your Application For Stackato
-----------------------------------------

Most applications should be able to run under Stackato with only a few changes.

**stackato.yml / manifest.yml**
	A `stackato.yml` or `manifest.yml` file should be added to the root of your application to hold
	installation details as well as setup configuration instructions for your app.
    
	:ref:`stackato.yml <stackato_yml>`

	:ref:`manifest.yml <manifest_yml>`

**Data Services**
  If you want to use Stackato's data services, your code will need to
  use the connection details provided by special environment variables
  (e.g. DATABASE_URL). The code should generally check for the existence
  of these environment variables, use them if they exist, and otherwise
  fall back to some default setting. 
	
  See the :ref:`Data Services <data-services>` section for further
  details.
	
**Environment Variables**
  A number of special environment variables are available during staging
  and runtime. These can be used in :ref:`hooks <stackato_yml-hooks>` or
  application code (for setting up databases, filesystem services, web
  server options, and cron jobs) in places where you would normally use
  hard-coded paths, credentials, or host-specific values.
  
  See the :ref:`Environment Variables <environment-variables>` section
  for a complete list.

Stackato push
-------------

The :ref:`stackato push <command-push>` command creates (or updates)
applications on Stackato. It negotiates with the API endpoint to reserve
application URLs, allocate application instances, provision data
services, upload application code, and optionally stage and start the
application.

The command will prompt for options or use those specified in a
:ref:`stackato.yml <stackato_yml>` or :ref:`manifest.yml <manifest_yml>`
file. 

.. note::
    
    The application name must be a valid `hostname label
    <http://en.wikipedia.org/wiki/Hostname#Restrictions_on_valid_host_names>`_
    (i.e. containing only alphanumeric characters and hyphens).


The ``push`` command implicitly stages and starts the application unless
the ``--no-start`` option is used. With this option, applications are
pushed in a pre-staged, stopped state where variables can be added (e.g.
for use in staging hooks). The application can then be staged and
started with the :ref:`stackato start <command-start>` command or
the Start button in the :ref:`Management Console <user-console-welcome>`.

The client will display staging logs while pushing the application but
will generally exit before any application logs are visible. To view the
application logs, use the :ref:`stackato logs <command-logs>` command.
    
.. index:: Allowed File Types

.. _allowed-file-types:

Allowed File Types
------------------

During the push process, Stackato includes only three file types:

#. Files
#. Folders
#. Links

All other special file types are ignored.

.. _deploy-naming:

Naming and URLs
---------------

To prevent confusion or collisions, Stackato enforces uniqueness for
URLs, application names, and service names:

* **URLs** (auto-generated or :ref:`manually mapped <deploy-map-url>`)
  must be globally unique, and are allocated on a "first come, first
  serve" basis.

* **Application names** must be unique within the scope of the
  :ref:`space <orgs-spaces>`. Applications deployed in different spaces
  can have the same name, but the full application URL must be globally
  unique URL.

* **Service names** must be unique within the scope of the :ref:`space
  <orgs-spaces>`. The name given to a service during creation is a
  pointer to a globally unique string (i.e. the *actual* database name
  in the system as shown by STACKATO_SERVICES), so there is no
  possiblility of naming conflicts with services created in other orgs
  and spaces.

.. index:: Deployment Zones

.. _deploy-zones:

Availability & Placement Zones
------------------------------

Stackato has two mechanisms for allocating application instances on
particular Droplet Execution Agent (DEA) nodes or groups of nodes:

.. _deploy-zones-availability:

Availability Zones
^^^^^^^^^^^^^^^^^^

Availability zones are Stackato cluster configuration options that help
distribute instances of an application across different physical
locations, network segments, or racks. This is done to provide high
availability in the event of server or network problems.

These zones are configured by Stackato administrators and take effect
automatically when multiple app instances are requested. There are no
user-facing options.

.. _deploy-zones-placement:

Placement Zones
^^^^^^^^^^^^^^^

Placement zones are groups of DEA nodes which allow for segregation of
application instances into different parts of a Stackato cluster,
possibly with different physical hardware characteristics or network
policies.

DEA nodes are tagged by a Stackato administrator with a placement zone
name. Users pushing applications to Stackato can specify which placement
zone the application instances are run on by using the
``--placement-zone`` option for the :ref:`stackato push <command-push>`
command, or by changing the Placement Zone in the application's Settings
view in the Management Console.

The other relevant ``stackato`` client commands are:

* :ref:`placement-zones <command-placement-zones>`: Show the available
  placement zones. 
* :ref:`placement-zone [name] <command-placement-zone>`: Show the list
  of DEAs associated with the specified placement zone.
* :ref:`set-placement-zone <command-set-placement-zone>`: Associate
  the application with a specific placement zone.
* :ref:`unset-placement-zone <command-unset-placement-zone>`: Remove
  the association between application and its current placement zone.


.. index:: Crontab Support

.. _deploy-crontab:

Crontab Support
---------------
.. note:: 
    Cron commands are only executed on instance #0 of the app.
    
Cron commands can be provided either in a regular crontab file in the root directory of the app, or
via the ``cron:`` section in *stackato.yml* (See :ref:`stackato.yml Options <stackato_yml>`).

The ``HOME`` and ``PATH`` environment variables, as well as all variables that start with ``PERL``, 
``PYTHON``, ``STACKATO``, ``VCAP``, ``BUNDLE``, ``LEIN``, ``GEM``, ``RACK``, ``RAILS``, or ``RUBY`` 
or ``http`` are exported to the top of the crontab file.  When applicable, the following database \
related environment variables are also added: ``DATABASE_URL``, ``MYSQL_URL``, ``POSTGRESQL_URL``, 
``REDIS_URL``, ``MONGODB_URL``, and ``RABBITMQ_URL``.

This happens after the ``pre-running`` hook has executed, so any changes made by those 
commands will be included in the crontab file.

After setting up environment variables, we copy the *$HOME/crontab* file, and finally the commands 
from the ``cron:`` section in *stackato.yml*. The resulting file is stored at 
*$STACKATO_APP_ROOT/crontab*.

Whitespace & Newlines in Environment Variables
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To prevent breakage in cron, embedded newlines ("\\n") in environent
variable values will be replaced with "\\\\n" when generating the
crontab. Any leading and trailing spaces in environment variable values
are also stripped.


.. index:: Map Application Url
.. _deploy-map-url:

Mapping App URLs
----------------

Stackato automatically assigns to each application a URL made up of the
application's name and the base URL for the system or the current
:ref:`Organization <orgs-spaces-organizations>`. An application named
"myblog" deployed to a Stackato system at "api.stacka.to" might be given
the URL "myblog.stacka.to".

In addition to this default URL, additional URLs which are assigned to
the Organization can be set for an application using the :ref:`stackato
map <command-map>` command. The application will respond to requests on
the mapped URL, provided a DNS record has been set up resolving to
Stackato's external IP or hostname.

For example, to map a URL to an existing application on Stackato::

  $ stackato apps
  
  +--------------+---+-----+-------------+-----------------------+------------+--------+
  | Application  | # | Mem | Health      | URLS                  | Services   | Drains |
  +--------------+---+-----+-------------+-----------------------+------------+--------+
  | myapp        | 1 | 128 | RUNNING (-) | myapp.stacka.to       |            |        |
  +--------------+---+-----+-------------+-----------------------+------------+--------+

  $ stackato map myapp mydomain.com
  
  +--------------+---+-----+-------------+-----------------------+------------+--------+
  | Application  | # | Mem | Health      | URLS                  | Services   | Drains |
  +--------------+---+-----+-------------+-----------------------+------------+--------+
  | myapp        | 1 | 128 | RUNNING (-) | myapp.stacka.to       |            |        |
  |              |   |     |             | mydomain.com          |            |        |
  +--------------+---+-----+-------------+-----------------------+------------+--------+

If DNS is configured correctly, requests to "mydomain.com" will resolve
transparently to "myapp.stacka.to".

.. note::

  Application URLs are allocated on a "first come, first serve" basis,
  and are reserved for the user who created the URL.

URLs can be mapped to multiple applications owned by the same user,
which can be useful for A/B testing. Stackato routes requests to the
mapped URL randomly between all available app instances.

Using the 'myapp.stacka.to' example above, you could push 'myapp-v2'
(e.g. a more recent revision) then map 'mydomain.com' to that app as
well. You can access the specific versions directly using
'myapp.stacka.to' and 'myapp-v2.stacka.to', and use 'mydomain.com' to
round robin between available instances of both versions::

  +-------------+---+---------+--------------------+-------------+
  | Application | # | Health  | URLS               | Services    |
  +-------------+---+---------+--------------------+-------------+
  | myapp       | 5 | RUNNING | myapp.stacka.to    |             |
  |             |   |         | mydomain.com       |             |
  | myapp-v2    | 1 | RUNNING | myapp-v2.stacka.to |             |
  |             |   |         | mydomain.com       |             |
  +-------------+---+---------+--------------------+-------------+

As you gain confidence with the new revision, you can increase the
number of instances of 'myapp-v2' (i.e. phasing that version into
production rather than cutting over) and eventually :ref:`unmap
<command-unmap>` 'mydomain.com' from the original 'myapp'.

Best Practices
--------------

.. _bestpractices-reducing-downtime-updates:

Reducing downtime during app updates
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Updating an app can create downtime while the new code is being staged.
URL mapping can be used to reduce this downtime by switching between two
running versions of an app.

For example, we have an application called "customertracker". The pushed
application name will include a version or build number, but it is
mapped to a "production" URL as well::

	$ stackato apps
	
	+--------------------+---+---------+------------------------------+------------+
	| Application        | # | Health  | URLS                         | Services   |
	+--------------------+---+---------+------------------------------+------------+
	| customertracker-v1 | 1 | RUNNING | customertracker-v1.stacka.to | customerdb |
	|                    |   |         | customertracker.example.com  |            |
	+--------------------+---+---------+------------------------------+------------+

Push the updated code with a new application name::

	$ stackato push --as customertracker-v2
	
	...
	
	$ stackato apps

	+--------------------+---+---------+------------------------------+------------+
	| Application        | # | Health  | URLS                         | Services   |
	+--------------------+---+---------+------------------------------+------------+
	| customertracker-v1 | 1 | RUNNING | customertracker-v1.stacka.to | customerdb |
	|                    |   |         | customertracker.example.com  |            |
	| customertracker-v2 | 1 | RUNNING | customertracker-v2.stacka.to | customerdb |
	+--------------------+---+---------+------------------------------+------------+

.. note::
  In this example, the configured service has the same name, so it is
  bound to both versions of the application. This will only work if
  there are no database schema changes or differences in the filesystem
  layout on a persistent filesystem service. If there are such
  differences, use distinct data services for the new version.
  
Map the "production" URL to the new app::	
	
	$ stackato map customertracker-v2 customertracker.example.com

	$ stackato apps
	
	+--------------------+---+---------+------------------------------+------------+
	| Application        | # | Health  | URLS                         | Services   |
	+--------------------+---+---------+------------------------------+------------+
	| customertracker-v1 | 1 | RUNNING | customertracker-v1.stacka.to | customerdb |
	|                    |   |         | customertracker.example.com  |            |
	| customertracker-v2 | 1 | RUNNING | customertracker-v2.stacka.to | customerdb |
	|                    |   |         | customertracker.example.com  |            |
	+--------------------+---+---------+------------------------------+------------+

While both versions of the application are live and mapped to the same
production URL, the router will round-robin web requests to this URL
betweeen both versions.

Next, unmap the production URL from the first app::

	$ stackato unmap customertracker-v1 customertracker.example.com
  
The old version is still available in case it's needed for rollback. If
everything works as expected with the newer code, delete the old app::

	$ stackato delete customertracker-v1

	$ stackato apps
	
	+--------------------+---+---------+------------------------------+------------+
	| Application        | # | Health  | URLS                         | Services   |
	+--------------------+---+---------+------------------------------+------------+
	| customertracker-v2 | 1 | RUNNING | customertracker-v2.stacka.to | customerdb |
	|                    |   |         | customertracker.example.com  |            |
	+--------------------+---+---------+------------------------------+------------+
  

.. _bestpractices-manage-multiple-targets:

Managing Multiple Targets
^^^^^^^^^^^^^^^^^^^^^^^^^

The Stackato client targets a single location with the command
``stackato target``.

If you need to target two or more instances at the same time, use one of
the following methods:

1. Use the ``--target <target>`` option. This sets the specified target
   for the current command only, and does not set it as the default::
	
    $ stackato apps --target api.stackato-xxx1.local
  

2. Use two or more terminals to access multiple targets. Within each
   terminal, set the ``STACKATO_TARGET`` environment variable for the
   API endpoint URL you want to work with in that terminal. The client
   will use this URL, overriding any target set with the ``stackato
   target`` command::
	
    $ export STACKATO_TARGET='api.stackato-xxx2.local'

  This target is used until the variable is unset or the terminal is closed. To unset it::
	
    $ unset STACKATO_TARGET


.. index:: Persistent Sessions
.. index:: Session Persistence
.. index:: Sticky Sessions

.. _persistent-sessions:

Persistent Sessions
-------------------

With multi-instance applications on Stackato, the Router will distribute
requests among all instances. Without session management, the end user
could access different application instances with each HTTP request
instead of connecting to the same instance that started their session.

Cloud-enabled applications should use a shared database (e.g. Redis),
cache (e.g. Memcached), or filesystem as a back end for session
management. Some examples of this approach are:

* Java:

  * `Tomcat session manager <http://tomcat.apache.org/tomcat-6.0-doc/config/manager.html>`__
  * `memcached-session-manager <http://code.google.com/p/memcached-session-manager/>`__
  * `tomcat-redis-session-manager <https://github.com/jcoleman/tomcat-redis-session-manager>`__

* Node.js: `connect-memcached
  <https://github.com/balor/connect-memcached#connect-memcached>`__, a
  session store that uses Memcached
  
* PHP:

  * :ref:`Persistent Sessions (PHP) <php-persistent-sessions-filesystem>`
  * `Memcached session support <http://php.net/manual/en/memcached.sessions.php>`__

* Python: `Django "How to use sessions" <https://docs.djangoproject.com/en/dev/topics/http/sessions/>`__

Stackato's default router does no special handling of ``JSESSIONID`` or
``SESSIONID`` cookies.

