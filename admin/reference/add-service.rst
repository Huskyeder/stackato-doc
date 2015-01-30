.. _add-service:

.. index:: Adding System Services

Adding System Services
======================

The term "service" is used in a few different contexts in Stackato:

* System Services: Service types (e.g. MySQL, RabbitMQ, Filesystem)
  available for use on the system
* Service Instances (provisioned services): Instances of the System
  Services created for end user applications
* :ref:`User Provided Service Instances <user-provided>`: Credentials
  and connection information for external services, specified by users. 

The :ref:`stackato services <command-services>` command will show a list
of all System Services available on the current target, as well as a
list of Provisioned Services allocated to the authenticated user.

Administrators can configure external data services to work in the same
way as core Stackato System Services, exposing existing software and
infrastructure for use by Stackato and its users.

.. _add-service-brokers:

Service Brokers
---------------

Service brokers are RESTful web services which connect Stackato (or any
Cloud Foundry-based PaaS) to services which the hosted apps can consume.

Stackato's built-in system services have their own service brokers which
handle the provisioning of service instances, but you can add your own 
service brokers to provide custom services (databases, message queues,
etc.) to end users.

The Cloud Foundry `v2 Service Broker API
<http://docs.cloudfoundry.org/services/api.html#api-overview>`__
provides a simplified mechanism for connecting data services to the
system. A service broker is responsible for:

* implementing a REST server to interface with the Cloud Controller
* authenticating requests using HTTP basic auth
* providing an interface to the data service for all
  provision/unprovision & bind/unbind events
* maintaining a catalog of available services and associated service
  plans
* maintaining a consistent record of the provisioned service instances
  and bindings to ensure services are persistent between broker restarts


CF Services Connector (Node.js)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ActiveState has created an open-source service broker library written in
Node.js called `cf-services-connector
<https://github.com/ActiveState/cf-services-connector-nodejs>`__ to
help you create custom service brokers for Stackato.

You can install the library with ``npm install cf-services-connector``
or include it in the *package.json* file of your service broker
implementation. See the `README
<https://github.com/ActiveState/cf-services-connector-nodejs/blob/master/README.md>`__
file for details on using the library.


Example Echo Service
^^^^^^^^^^^^^^^^^^^^

The cf-services-connector-nodejs repository provides an example service
broker called "echo-service" which can be deployed to Stackato itself:

`<https://github.com/ActiveState/cf-services-connector-nodejs/tree/master/example/echo-service>`_

Review the `echo-service.json
<https://github.com/ActiveState/cf-services-connector-nodejs/blob/master/example/echo-service/config/echo-service.json>`__
file and change the ``authUser``, ``authPassword``, and ``database:
encryptionKey`` settings before deploying it.

Descriptions of the settings from the ``services`` block in this file
can be found in the following Cloud Foundry documentation:

* `Service Broker API: Catalog Management <http://docs.cloudfoundry.org/services/api.html#catalog-mgmt>`__
* `Catalog Metadata <http://docs.cloudfoundry.org/services/catalog-metadata.html>`__

Once the echo-service application has been deployed to Stackato (or any
web server supporting Node.js), an Stackato admin can add the service
broker to Stackato with the :ref:`stackato add-service-broker
<command-add-service-broker>` command::

  $ stackato add-service-broker
  Enter name: echo-broker
  Enter url: http://echo-service-broker.example.com
  Enter username: admin
  Enter password: mypasswd
  Creating new service broker [echo-broker] ... OK

Once the service broker has been added to the system, the services it
provides will become available to users::

  $ stackato services
  ============== Service Plans ================
  
  +----+-------------+-------------------------------+----------+---------+-----------+----------------------------+------+
  |    | Name        | Description                   | Provider | Version | Plan      | Details                    | Orgs |
  +----+-------------+-------------------------------+----------+---------+-----------+----------------------------+------+
  | F- | echoservice | Echo Service - it echoes      |          |         | default   | This is the first plan     |      |
  | F- | echoservice | Echo Service - it echoes      |          |         | secondary | This is the secondary plan |      |
  | FP | filesystem  | Persistent filesystem service | core     | 1.0     | free      | free                       |      |
  | FP | mysql       | MySQL database service        | core     | 5.5     | free      | free                       |      |
  | FP | postgresql  | PostgreSQL database service   | core     | 9.1     | free      | free                       |      |
  +----+-------------+-------------------------------+----------+---------+-----------+----------------------------+------+

By default, service plans are created as private (the "P" in the
leftmost column above). To make the plan available to your Organization,
run the following command::

  $ stackato update-service-plan --vendor echoservice --public default


.. _oracle-db:

Oracle Database Add-On
----------------------

An Oracle database service add-on is available from ActiveState. It can
be added to a Stackato system to allow end users to automatically
provision databases for end user applications on an existing Oracle
Database server. Contact `ActiveState Sales
<http://www.activestate.com/contact-stackato?intcmp=contact&intdet=stackato-home>`_
to get access to this add-on.


