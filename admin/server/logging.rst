.. index:: Logyard

.. _logging:

Log Streams
===========

Application and system logs in Stackato are aggregated into streams
which can be viewed, tailed, filtered, and sent via drains to other
log aggregators for archiving or analysis. There are three general types
of streams:

* **Application log streams**: application logs (plus relevant events) from all instances

* **System log streams**: Stackato and other system logs from all nodes (dmesg, dea.log, auth.log, etc.)

* **Cloud event streams**: cloud events from all nodes (see Cloud Events in the Management Console)

A **message** is a single log line or event in a stream.

Each message has a **key** which identifies *which* stream it belongs to
(see :ref:`Keys <logging-keys>` below).

.. index:: logyard processes

.. _logging-processes:

Logyard
-------

Log streams are handled by three processes which run on all Stackato nodes:

* **logyard**: listens for incoming log messages and forwarding them to
  a configurable list of drains

* **systail**: sends system logs (/s/log/\*, etc.) to **logyard** to be
  in turn forwarded to drains

* **logyard_sieve**: listens for all system logs and extracts vital events
  back to **logyard**

**apptail** is an additional process which runs only on DEA nodes. It
sends user application logs to **logyard**, injecting relevant
application-specific events from the **logyard_sieve** stream.


.. _logging-drains:

Drains
------

A "drain" is a receiver for a log stream. Logyard has four kinds:

* TCP (e.g. tcp://10.0.11.101:12345)

* UDP (e.g. udp://logs.papertrailapp.com:12345)

* Redis (e.g. redis://192.168.1.157:5000/)

* file (e.g. file:///s/logs/custom-drain-1.log)


.. _logging-drains-system:

System Drains
^^^^^^^^^^^^^

Drains for system log and cloud event streams can be added by admins
with the :ref:`kato log drain <kato-command-ref-log-drain-add>` command.
For example::

  $ kato log drain add --prefix systail.kato mydrain udp://logs.papertrailapp.com:12345

This creates a UDP drain that recieves messages from **kato.log**
(on all nodes in the cluster) and forwards them to `Papertrail
<https://papertrailapp.com/>`_ on port 12345.

The ``--prefix`` flag takes a :ref:`key <logging-keys>` prefix as its
argument.

To delete the drain::

  $ kato log drain delete mydrain

The :ref:`kato history <kato-command-ref-history>` command uses a
built-in drain which forwards to a Redis server on the Primary node.

The 'file' drain type will append to a local file. To overwrite the
file instead, add the 'overwrite=1' option::

  $ kato log drain add debug file:///s/logs/debug-1.log overwrite=1

.. _logging-format:

Log Format
^^^^^^^^^^

Log drains can emit entries in a variety of formats:

* verbatim (default): Log entries as they appear in the source log files (plain text).

* json: Log entries wrapped as JSON objects, with keys identifying each part of the entry.

* custom: Values of the specified JSON keys arranged in an arbitrary format.

For example, to add a drain with just the timestamp, application name and message::

  $ kato log drain add -p apptail -f '{{.human_time}} - {{.app_name}}: {{.text}}' \
  > all-apps file:///s/logs/apptail-short.log

JSON keys are enclosed in double curly braces and prefixed with a
period. The spaces, hyphen, and colon here are functioning as
delimiters. The resulting entry might look like this::

  2013-01-22T16:01:14-08:00 - myenv: Application 'myenv' is now running on DEA 27da51

Different JSON keys are available in different :ref:`log streams <logging-keys>`: 

**apptail.**:

* text: actual log line
* unix_time: timestamp (seconds since  1 January 1970)
* human_time: formatted time
* node_id: DEA host IP of this app instance
* filename: log file from which this line originated
* source: e.g. app, staging, stackato.dea, stackato.stager, appstore
* instance_index: instance number
* app_guid: GUID of this app
* app_name: application name
* app_space: GUID of the space this app belongs to
* syslog.priority: syslog priority
* syslog.time: syslog formatted time

**event.**:

* text: event description
* unix_time: timestamp
* human_time: formatted time
* node_id: Node IP from which this event originated
* type: type of event (eg: process_stop) 
* severity: INFO, WARN, ERROR
* process: the process generating the event
* info: event-specific information as JSON
* syslog.priority: syslog priority
* syslog.time: syslog formatted time

**systail.**:

* text: actual log line
* unix_time: timestamp
* human_time: formatted time
* node_id: Node IP from which this log line originated
* name: name of the component (eg: redis_gateway)
* syslog.priority: syslog priority
* syslog.time: syslog formatted time

You can see a list of the default drain formats using :ref:`kato config
get <kato-command-ref-config>`::

  $ kato config get logyard drainformats
  apptail: ! '{{.human_time}} {{.source}}.{{.instance_index}}: {{.text}}'
  event: ! '{{.type}}@{{.node_id}}: {{.desc}} -- via {{.process}}'
  systail: ! '{{.name}}@{{.node_id}}: {{.text}}'
  [...]

These default log formats are used when the corresponding prefix is used
and no format options ("-f") are specified. For example ``kato drain add
-p systail.dea ...`` would format the drain using the 'systail' drain
format.

.. _logging-drains-save-format:

Saving Custom Log Formats
^^^^^^^^^^^^^^^^^^^^^^^^^

Custom formats for drains can be saved as a named type in the Logyard
configuration. To do this, add the formatting string to a new key in
logyard/drainformats. For example, to save the log format used in the
'all-apps' drain example above::

  $ kato config set logyard drainformats/simplefmt "{{.human_time}} - {{.app_name}}: {{.text}}"

You can use this named format when setting up new drains. For example, a
shorter command for creating the 'all-apps' drain would be::

  $ kato log drain add -p apptail -f simplefmt all-apps file:///s/logs/apptail-short.log

A custom "systail" log stream might look like this::

  $ kato config set logyard drainformats/systail-papertrail '<13>1 - {{.human_time}} - {{.name}}@{{.node_id}} -- {{.text}}'

This could be forwarded to the Papertrail log analysis service::

  $ kato log drain add papertrail udp://logs.papertrailapp.com:45678 -f systail-papertrail
  
You can also change the default apptail, event, and systail drain
formats to modify the output of any drains using these prefixes (e.g.
:ref:`stackato drain <command-drain add>`, Cloud Events in the Management
Console, and :ref:`kato log tail <kato-command-ref-log-tail>`
respectively).

.. _logging-drains-custom:

Custom Drains
^^^^^^^^^^^^^

You can add custom drains to Logyard to look for certain events or parse
certain log messages (e.g. tracking application push requests or user
logins). Examples of custom drains and more advanced usage of Logyard
can be found in the `Logyard Developer Guide
<https://github.com/ActiveState/logyard-devguide#readme>`_


.. _logging-drains-app:

Application Drains
^^^^^^^^^^^^^^^^^^

Drains for application log streams can be added by end users with the
:ref:`stackato drain add <command-drain add>` command. See the
:ref:`Application Logs <application_logs>` section of the User Guide for
an example.

.. _logging-drains-status:

Drain Status
^^^^^^^^^^^^

You can check the status of all drains on Stackato with the ``kato log
drain status`` subcommand. For example::

  $ kato log drain status
  appdrain.1.mine         192.168.68.5    RUNNING[53]
  appdrain.1.mydrain      192.168.68.5    RETRYING[75]  invalid port 3424252
  builtin.apptail         192.168.68.5    RUNNING[3]
  builtin.cloudevents     192.168.68.5    RUNNING[3]
  builtin.katohistory     192.168.68.5    RUNNING[3]

If the RETRYING drain hits a :ref:`drain timeout
<logging-drains-timeouts>`, its status will change to FATAL.

.. _logging-keys:

Keys
^^^^

Each message in a log stream is prefixed with a key, identifying what
type of message it is or to which log stream it belongs. The following
keys are available for use in defining drains using the ``--prefix``
flag for :ref:`kato log drain add <kato-command-ref-log-drain-add>`).

Systail keys are :ref:`configurable <logging-systail-manage>`.

apptail
~~~~~~~

* apptail.<app.id>


event
~~~~~

* event.<eventname>

  * process_stop

  * process_exit

  * kato_action

  * timeline

  * nginx_error

  * vcap_error

  * vcap_warning

  * service_provision

.. _logging-keys-systail:

systail
~~~~~~~

* systail.<processname>

* systail.<processname>.<nodeip>

  * auth
  * dmesg
  * dpkg
  * kato
  * kernel
  * nginx_error
  * supervisord
  * cc_nginx_error
  * app_mdns
  * app_store
  * applog_redis
  * apptail
  * avahi_publisher
  * cc_nginx
  * cloud_controller_ng
  * logyard_sieve
  * dea_ng
  * dockerd
  * aok
  * filesystem_gateway
  * filesystem_node
  * harbor_gateway
  * harbor_node
  * harbor_proxy_connector
  * harbor_redis
  * health_manager
  * logyard
  * memcached_gateway
  * memcached_node
  * mongodb_gateway
  * mongodb_node
  * mysql
  * mysql_gateway
  * mysql_node
  * nats_server
  * nginx
  * postgresql
  * postgresql_gateway
  * postgresql_node
  * prealloc
  * rabbit_gateway
  * rabbit_node
  * redis_gateway
  * redis_node
  * redis_server
  * router
  * router2g
  * stager
  * systail

.. _logging-systail-manage:

Managing the systail stream
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The list above shows the default systail keys. These can keys can be
modified with the :ref:`kato config <kato-command-ref-config>` command
to add arbitrary system log files to the stream or change the log file
source for an existing key.

* To retrieve the current list of log files being streamed::

  $ kato config get systail log_files

* To remove a log file from the stream::

  $ kato config del systail log_files/dpkg

* To add a new log file to the stream::

  $ kato config set systail log_files/dpkg /var/log/dpkg.log

Restart the ``systail`` process after adding or removing log files::

  $ kato process restart systail


.. note::

  Do not remove the default Stackato log stream keys (i.e. anything in
  the :ref:`systail <logging-keys-systail>` list above) as this would
  affect the output of ``kato tail``.


.. _logging-configuration:

Configuration
-------------

Stackato has a number of configurable limits on application log drains
to help prevent performance problems the logging subsystems. These
settings can all be viewed and set with :ref:`kato config
<kato-command-ref-config>` commands as described below:

.. _logging-drains-timeouts:

Drain Timeouts
^^^^^^^^^^^^^^

* **logyard** **retrylimits**: If a drain gets disconnected (e.g. if the
  log aggregation service goes down), Logyard will retry the connection
  at the following intervals:

  * once every 5 seconds for 1 to 2 minutes
  * once every 30 seconds for 5 minutes
  * once every 1 minute for 10 minutes
  * once every 5 minutes until connected or destroyed

  This ensures that once connectivity is restored, the drains will
  re-establish their connections within (at most) 5 minutes.

  Application drains will retry for one day. Temporary drains (e.g. ``kato
  tail``) will retry for 25 minutes. All other drains will retry
  indefinitely.

  These timeouts can be configured. To see a list of the configured
  timeouts, use :ref:`kato config get <kato-command-ref-config>`. For
  example::
  
    $ kato config get logyard retrylimits
    appdrain.: 24h
    tmp.: 25m
    
  To set a timout (in minutes with "m", or hours with "h"), use
  :ref:`kato config set <kato-command-ref-config>` . For example, to set
  the timeout limit to 10 hours on all drains named with the prefix
  "papertrail"::
  
    $ kato config set logyard retrylimits/papertrail 10h
  
  Timeouts should not be set shorter than 21 minutes. The limits will
  take effect on new drains, deleted/re-created drains, or for all
  matching drains after ``kato process restart logyard`` has been run on
  all nodes. 


.. _logging-user-limits:

User Drain Limit
^^^^^^^^^^^^^^^^

* **cloud_controller_ng** **max_drains_per_app** (default 2): limits the
  number of drains an application can have. Once this limit is reached,
  users will see the following notificition when trying to add a new
  drain::

    Adding drain [fail] ... Error 123: Per-app drain limit (2) reached.
    
  To change the limit, set ``max_drains_per_app`` in the cloud_controller_ng
  configuration. For example, to change this limit to 5 drains::

    $ kato config set cloud_controller_ng max_drains_per_app 5

Apptail Limits
^^^^^^^^^^^^^^

* **apptail** **max_record_size** (default 950 bytes): The maximum
  length for each log line. Characters beyond this limit are discarded.

* **apptail** **max_lines_per_second** (default 100): The rate at which
  the apptail buffer empties. Apptail uses a `leaky bucket algorithm
  <http://en.wikipedia.org/wiki/Leaky_bucket>`__ to handle bursts of log
  output.

* **apptail** **max_lines_burst** (default 10000): The number of lines
  in the dynamic apptail buffer. This buffer empties at the rate set by
  ``max_lines_per_second``. If a burst of log traffic exceeds
  ``max_lines_per_second`` long enough for the ``max_lines_burst`` to
  fill, new log records will be discarded. 

* **apptail** **read_limit** (default 16MB): defines the maximum number
  of bytes to read from the end of application log files. This is done
  to prevent performance problems during restart of the ``apptail``
  process (or nodes running the process) if the log file sources have
  grown extremely large.

  When this limit is reached, a warning such as the following will appear
  in both the Cloud Events stream and the application's log stream::

    WARN -- [exampleapp] Skipping much of a large log file (stderr); size (26122040 bytes) > read_limit (15728640 bytes)

  To change the read_limit to 100MB::

    $ kato config set apptail read_limit 100


.. index:: logyard-cli

.. _logging-logyard-cli:

Debugging Logyard
-----------------

Use ``kato log stream debug`` to monitor Logyard-related log activity.
The command tails the logyard, apptail, systail, and logyard_sieve
streams. 

.. only:: not public

  The ``logyard-cli`` utility is a server side tool for inspecting and
  debugging Logyard. It has the following commands:
  
  * logyard-cli recv 
  * logyard-cli stream
  * logyard-cli list
  * logyard-cli add
  * logyard-cli delete
  * logyard-cli status
  
  These have access to a number logs streams which are not available
  via ``kato log``.

