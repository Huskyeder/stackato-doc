.. index:: Log Drain Examples

.. _logging-examples:

Log Drain Examples
==================

Detailed instructions on how to use drains with third party log analysis
software or services:

* :ref:`Papertrail <logging-examples-papertrail>`
* :ref:`Splunk <logging-examples-splunk>`
* :ref:`Logstash <logging-examples-logstash>`
* :ref:`Hello World Custom Drain <logging-examples-hello-world-custom-drain>`

.. note::

    Do not forward both application and system logs to the same destination.

.. _logging-examples-papertrail:

Papertrail
----------

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

5. Note down the **port number**. You need this later on.

.. image:: ../images/ppt4.png
    :class: shadow

Enable system logging (via udp) by executing the following kato command:

.. parsed-literal::

    kato log drain add *drain-name* udp://logs.papertrailapp.com:*port#*

.. note::
    Papertrail requires systail log lines to have ``<13>l`` at the
    beginnging of each line. Make sure the drain you are forwarding is
    formatted this way (see example in :ref:`Saving Custom Log Formats
    <logging-drains-save-format>`).


.. _logging-examples-splunk:

Splunk
------

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

Enable system logging by executing the following kato command:

.. parsed-literal::

    kato log drain add *drain-name* udp://*splunk-server-address*:*port#*

OR

.. parsed-literal::

    kato log drain add *drain-name* tcp://*splunk-server-address*:*port#*

Splunk supports JSON format without further configuration.

Enable system JSON logging by executing the following kato command:

.. parsed-literal::

    kato log drain add --format json *drain-name* tcp://*splunk-server-address*:*port#*

.. _logging-examples-logstash:

Logstash
--------

1. `Download and Install Logstash <http://www.elasticsearch.org/overview/logstash/download/>`_.

2. Configure Logstash to add a UDP or TCP listener on the port of your choosing.  For example, 
   for a UDP listener on port 10000, add the following to the logstash.conf:

.. parsed-literal::

    input {
       udp {
          port => '10000'
       }
    }

3. Enable system logging (via udp) by executing the following kato command:

.. parsed-literal::

    kato log drain add *drain-name* udp://logstash-server-address:*port#*


.. _logging-examples-hello-world-custom-drain:

Hello World Custom Drain
------------------------

The command below starts a drain target server on a node, piping to a local file::

    nc -lk 0.0.0.0 10000 > log-output.txt

As long as that `nc` command runs, this will funnel logs from all drains targeting 
it into the file log-output.txt

Enable system logging by executing the following kato command:

.. parsed-literal::

    kato log drain add *drain-name* udp://*server-address*:*port#*

OR

.. parsed-literal::

    kato log drain add *drain-name* tcp://*server-address*:*port#*
