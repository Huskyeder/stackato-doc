.. index:: Application Logging

.. _application_logs:

Application Logs
================

Logs for applications running on Stackato are aggregated into streams,
so that data from multiple instances can be viewed together and
filtered. Application log streams can be accessed via:

* the :ref:`Management Console <management-console>` using the **View
  Logs** button on the application Details page, or 

* the :ref:`stackato logs <command-logs>` command

* application log :ref:`drains <application_logs-drain>`

Log streams are tailed output from actual log files in each application
container, generally found in the */home/stackato/logs/* directory. These files
can be accessed with the :ref:`stackato files <command-files>` command or
from the Application details page of the :ref:`Management Console
<management-console>`.

.. note::
  These files are not automatically rotated. For long-running
  applications or verbose logs, you should :ref:`rotate them
  <application_logs-rotate>` to avoid filling up the application
  container's filesystem.

stackato logs
-------------

To view and application log stream, use the :ref:`stackato logs
<command-logs>` command::

    $ stackato logs myapp

To limit the number of lines displayed, use the ``--num`` option::

    $ stackato logs myapp --num 50

To view log stream as it is updated, use the ``--follow`` option::

    $ stackato logs myapp --follow

Log streams can be filtered on a number of parameters:

* **--text** does a glob pattern match on the log message

* **--instance** shows only logs from the specified application instances (starting at instance 0).

* **--filename** filters based on the log filename (e.g. 'stderr.log')

* **--source** shows only logs from the specified source ('app' or 'staging'). Without a source specified, the log stream includes staging and application logs as well as cloud events relevant to app.

The ``--json`` flag can be used to return each log line as a JSON object.


.. note::
    ``stackato logs`` buffers only 400 lines of the log stream history
    and may sometimes miss log lines if the output is higher than the
    system's application log rate limit (set by a Stackato
    administrator). If you need earlier log lines, or find that lines
    are missing, use the :ref:`stackato files <command-files>` command
    to fetch the relevant log file from the *logs/* directory or create
    a log :ref:`drain <application_logs-drain>` preemptively (where
    possible).


.. _application_logs-adding:

Adding Files to the Stream
^^^^^^^^^^^^^^^^^^^^^^^^^^

By default, ``stackato logs`` streams log data from *staging_tasks.log*
(while staging), *stdout.log* and *stderr.log* (while running). 

You can add up to five additonal files to the log stream by modifying the 
**STACKATO_LOG_FILES** environment variable (in :ref:`stackato.yml
<stackato_yml-env>` or using :ref:`stackato set-env <command-set-env>`).

The variable should contain a list of named files separated with ":" in
the following format::

  name=/path/to/file.log:name=/path/to/another.log
  
The *name* used in the value or individual variable name becomes part of
each log line, and can be used for filtering the stream.

For example, to add a specific Tomcat log file to the default
$STACKATO_LOG_FILES variable, you might set the following in
*stackato.yml*::
  
    env:
      STACKATO_LOG_FILES: tomcat=/home/stackato/tomcat/logs/catalina.2013-11-04.log:$STACKATO_LOG_FILES
      
Paths can be specified fully, or relative to $STACKATO_APP_ROOT.



.. _application_logs-drain:

stackato drain
--------------

The :ref:`stackato drain add <command-drain add>` command is used to create a
log drain which forwards application logs to external log aggregation
services, log analysis tools, or Redis databases. For example::

  $ stackato drain add myapp appdrain udp://logs.loggly.com:12345 

This creates a UDP drain called "appdrain" for the application "myapp"
which forwards all log messages and events for that application to
`Loggly <http://loggly.com/>`_ on port 12345.

The log drain URL can contain only:

* **scheme**: "udp://" or "tcp://"
* **host**: IP address or hostname
* **port**: number

Any additional parameters are discarded.

To delete the drain::

  $ stackato drain delete appdrain
  
Use the `--json` option send the log lines in JSON format::

  $ stackato drain add myapp jsondrain --json udp://logs.loggly.com:12346
  
To check the status of your application drains, use the ``stackato drain
list`` command.
  
.. note::

  If the service at the recieving end of the drain goes offline or
  becomes disconnected, Stackato will retry the connection at increasing
  intervals.

.. _app-logging-examples:

Log Drain Examples
------------------

Detailed instructions on how to use drains with third party log analysis
software or services:

* :ref:`Papertrail <app-logging-examples-papertrail>`
* :ref:`Splunk <app-logging-examples-splunk>`

.. _app-logging-examples-papertrail:

Papertrail
^^^^^^^^^^

1. `Create an account for Papertrail <https://papertrailapp.com/plans>`_

2. In the Dashboard screen, click *Add Systems*.

.. image:: ../images/ppt1.png
    :class: shadow

3. In the Setup Systems screen under *Other log methods*, click *Alternatives*.

.. image:: ../images/ppt2.png
    :class: shadow

4. Choose option C: *My system's hostname changes* and give it a suitable name.

.. image:: ../images/ppt3.png
    :class: shadow

5. Note the **port number**. 

.. image:: ../images/ppt4.png
    :class: shadow

6. Enable application logging (via udp) by executing the following client command:

.. parsed-literal::

    stackato drain add *drain-name* udp://logs.papertrailapp.com:*port#*


.. _app-logging-examples-splunk:

Splunk
^^^^^^

1. `Setup Splunk Server <http://www.splunk.com/download>`_.

2. In the welcome screen, click *Add data*

.. image:: ../images/splunk1.png
    :class: shadow

3. Under *Choose a Data Source*, click “From a TCP port”. (or UDP)

.. image:: ../images/splunk2.png
    :class: shadow

4. In the Add new Source screen:

* Select a TCP/UDP port greater than **9999**
* Give it a suitable **Source name**.
* Set sourcetype to **Manual**
* Leave Source Type **empty**

.. image:: ../images/splunk3.png
    :class: shadow

5. Run the following client command to create the log drain:

.. parsed-literal::

    stackato drain add *drain-name* udp://*splunk-server-address*:*port#*

OR

.. parsed-literal::

    stackato drain add *drain-name* tcp://*splunk-server-address*:*port#*

Splunk supports JSON format without further configuration.


Hello World Custom Drain
^^^^^^^^^^^^^^^^^^^^^^^^

The command below starts a drain target server on a node, piping to a local file::

    nc -lk 0.0.0.0 10000 > log-output.txt

As long as that `nc` command runs, this will funnel logs from all drains targeting 
it into the file *log-output.txt*

Run the following client command to create the log drain:

.. parsed-literal::

    stackato drain add *drain-name* udp://*server-address*:*port#*

OR

.. parsed-literal::

    stackato drain add *drain-name* tcp://*server-address*:*port#*



.. _application_logs-rotate:

Rotating Application Log Files
------------------------------

Stackato does not automatically rotate application log files in
*/home/stackato/logs/*. However, you can add log rotation for these files yourself
using ``cron`` and ``logrotate``:

1. Add a cron key in *stackato.yml* to run ``logrotate``. Set
   STACKATO_CRON_INSTANCES to "all" to specify that the job should
   be run in all application instances. For example::

    env:
      STACKATO_CRON_INSTANCES: all
    cron:
      - 0 1 * * * /usr/sbin/logrotate --state /home/stackato/app/logrotate-state /home/stackato/app/app-logrotate.conf
      
   The ``--state`` option must be set because the ``stackato`` user
   does not have permission to update the default state file.

2. Add an *app-logrotate.conf* file to the base directory of your
   application to specify which log files to rotate, and and which
   ``logrotate`` options to use. For example::

    /home/stackato/logs/\*.log {
      daily
      compress
      copytruncate
      dateext
      missingok
      notifempty
      rotate 3
      maxage 7
      size 3M
    }
  
Programming languages, frameworks, and utilities handle logging
operations in different ways. Check for incompatibilities with
``logrotate`` before implementing log rotation scheme such as the one
above.


