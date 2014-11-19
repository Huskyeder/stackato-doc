.. _external-db:
.. _external-db-general:

.. index:: External Data Services
.. index:: External Database

External Data Services
======================

The Stackato VM has a number of built-in data services that can be
enabled or disabled. For implementations where high availability or high
performance are required, configure Stackato to connect to an externally
maintained data service.

.. _external-db-manual:

Manual Connection
-----------------

Any application running on Stackato can connect to an external database
directly as long as:

* the DEA host can route to the IP address and port of the service and
* one or more of the following is true:

  * :ref:`docker/allowed_subnet_ips <ports-hosts-allowed>` is set for the service host
  * :ref:`docker/allowed_host_ports <ports-hosts-allowed>` is set for the service port
  * a :ref:`User Provided Service Instance <user-provided>` is bound to the app

Credentials for the external service can be:

* hard coded in the application configuration 
* set in an :ref:`environment variable <stackato_yml-env>`
* set in a :ref:`User Provided Service Instance <user-provided>`

.. _external-db-service-broker:

Service Brokers
---------------

To expose an external data service for a production Stackato PaaS,
deploy a :ref:`Service Broker <add-service-brokers>`. This will make
Service Plans available to the end users (visible via :ref:`stackato
marketplace <command-marketplace>` and in the Management Console),
allowing them to request service instances and bind them to their
applications.

There are several implementations available that can be forked and
modified to suit the type of service you want to connect:

* `ActiveState/cf-services-connector-nodejs <https://github.com/ActiveState/cf-services-connector-nodejs>`__ (Node.js)
* `cloudfoundry-community/spring-boot-cf-service-broker <https://github.com/cloudfoundry-community/spring-boot-cf-service-broker>`__ (Java)
* `cloudfoundry-samples/github-service-broker-ruby <https://github.com/cloudfoundry-samples/github-service-broker-ruby>`__ (Ruby)

Documentation on implementing and deploying brokers can be found in each
of these repositories.

.. _external-db-kato-config:

Reconfiguring Built-In Services
-------------------------------

To automatically provision databases for applications on external MySQL
or PostgreSQL systems, Stackato must be configured with administrative
account credentials account on the database servers. You can use the
default superuser accounts (e.g. 'root' or 'postgres') for this, or
create new ones specifically for Stackato.

The credentials for this account, along with the hostname and port of
the database server, are set in the Stackato configuration via
:ref:`kato config set <kato-command-ref-config>`.

.. _external-db-mysql:

MySQL
^^^^^

The MySQL server must be set up to allow connections over the network
(rather than just on 'localhost'). Make sure the 'bind-address' is set to
the host's IP address (or '0.0.0.0'). 

Enter the ``mysql`` shell and grant the root user privileges on all
tables. For example::

    $ GRANT ALL PRIVILEGES ON *.* TO 'root'@'<HOSTNAME|IP>' IDENTIFIED BY
    '<PASSWORD>'
    WITH GRANT OPTION;
    $ FLUSH PRIVILEGES;

Replace the ``<HOSTNAME|IP>`` portion above with the IP address or
hostname of the Stackato node running the ``mysql_node`` process. 

Once the user is configured to accept connections from Stackato and to
create users and databases, change the configuration for 'mysql_node' in
Stackato. For example::

    $ kato config set mysql_node mysql/host 10.5.120.101
    $ kato config set mysql_node mysql/pass yourpassword
    $ kato config set mysql_node mysql/port 3306
    $ kato config set mysql_node mysql/user root

Once these have been set, restart mysql::

    $ kato restart mysql

.. _external-db-rds-mysql:

Amazon RDS for MySQL
^^^^^^^^^^^^^^^^^^^^

If you are using Stackato on Amazon EC2, you can set up the Stackato
MySQL service to use `Amazon RDS for MySQL
<http://aws.amazon.com/rds/mysql/>`__ as the database back end.

Launch the RDS instance on Amazon with a security group granting access
to the Stackato service node (or wherever the 'mysql' role will be
running). Set the host, port and credentials for the RDS instance in the
configuration for mysql_service via :ref:`kato config
<kato-command-ref-config>`, then set the ``aws_rds_compat`` option to
``true``.

For example::

  $ kato config set mysql_node mysql/host <rds-endpoint>
  $ kato config set mysql_node mysql/user <rds-username>
  $ kato config set mysql_node mysql/pass <rds-password>
  $ kato config set mysql_node mysql/port <rds-port>
  $ kato config set mysql_node aws_rds_compat true
  $ kato restart mysql


.. _external-db-postgresql:

PostgreSQL
^^^^^^^^^^

Make sure the PostgreSQL database server (version 9.1 or later) will
accept connections over the network. Edit *postgresql.conf* make sure
the 'listen_addresses' is uncommented and set to the networked interface
IP. For example::

    listen_addresses = 'localhost, 10.5.120.102'

Edit *pg_hba.conf* and make sure a line exists that allows all Stackato
instances to connect to it. For example::

    host    all   all       10.5.120.0/23   md5

Restart PostgreSQL.

Using the default 'postgres' user (or another account with the same
superuser privileges), change the configuration for 'postgresql_node' in
Stackato. For example::

    $ kato config set postgresql_node postgresql/host 10.5.120.102
    $ kato config set postgresql_node postgresql/pass yourpassword
    $ kato config set postgresql_node postgresql/port 5432
    $ kato config set postgresql_node postgresql/user postgres

Once these have been set, restart the postgresql_node process::

    $ kato process restart postgresql_node

.. _external-db-troubleshoot:

Troubleshooting
---------------

The ``psql`` and ``mysql`` clients are available at the command line on
the Stackato VM. Log in to the Core node (i.e. the one running the Cloud
Controller) and test the database connection directly with the
appropriate client. For example::

    $ mysql -u stackato -p mypassword -h 10.5.120.101
    mysql> show databases;
    ...

If the basic client connection works, test database creation using the
``stackato create-service ...`` command::

    $ stackato create-service mysql
    Creating Service [mysql-24901]: OK

If there are problems, check the corresponding logs on the database
server. These are generally found in */var/log/postgresql* and */var/log/mysql*.

Logs from Stackato can be viewed with ``kato log tail``::

    $ kato log tail postgresql_node
    
