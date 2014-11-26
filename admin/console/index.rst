.. _management-console:

.. index:: Console
.. index:: Management Console

Management Console (Admin View)
===============================

Stackato's web interface is called the Management Console. The interface
displays more options and settings for Admin users than it does for
regular end users. Some of the features described below are only
available in the Admin view.

.. include:: ../common/console-intro.inc

.. _console-welcome:

Welcome
-------

The top-level page of the Management Console displays quick links to the
most used resources and views. The blue buttons are for features also
available for regular end users (see :ref:`Management Console (User View)
<user-console-welcome>`).

Green buttons expose Admin-only functionality:

* **Configure Available Services**: Opens the :ref:`Cluster Nodes
  <console-cluster-nodes>` view showing which roles are running on which
  nodes. From this view you can add or remove Service roles on the
  various nodes in the cluster (or on 127.0.0.1 for micro clouds).

* **Manage Organizations**: Opens the :ref:`Organizations
  <console-organizations>` view.

* **Manage Users**: Opens the :ref:`Users <console-users>` view.

* **View All Deployed Applications**: Opens the :ref: `Applications
  <console-applications>` view.

* **View Cloud Events**: Opens the `Cloud Events <console-cloud-events>` view.

* **View Dashboard**: Opens the `Dashboard <console-dashboard>`.

System Information
^^^^^^^^^^^^^^^^^^

* **Version**: Version (release) number of the system.

* **MBUS IP**: The IP address that hosts the primary node. Cluster nodes
  (if any) will connect via this IP address. In a micro cloud setting,
  it will be 127.0.0.1.

* **API Endpoint**: The URL for stackato clients to target. Normally
  also the URL for the Management Console.

.. _console-applications:

Applications
------------

The Applications section displays a list of all apps on the server.
Click anywhere on the line for an app to view its details. Admins have
the same permissions in the :ref:`Application View <user-console-app>`
as a Developer of the space it was deployed to.

.. _console-organizations:

Organizations
-------------

The top level Organizations page allows Admins to add and delete
:ref:`Organizations <orgs-spaces>`. Clicking on an organization name
opens its details. This view is the same as a regular :ref:`user's
Organizations view <user-console-organizations>`, but admin users can
edit quotas, and add/remove domains, spaces, and users.

.. _console-support:

Support
-------

The Support menu includes the same options as the regular user with the
addition of a **Generate Stackato Report** link, which exposes the same
functionality as :ref:`kato report <kato-command-ref-report>`.


.. _console-admin:

Admin
-----

Several views that are only available to Stackato administrators are
in the Admin menu.

.. _console-cluster-nodes:

Cluster Management
^^^^^^^^^^^^^^^^^^

Displays a list of nodes in the current cluster, and what services are
running on each node. In a micro cloud configuration, only the current
local node ('127.0.0.1') is shown.

To enable or disable services on a node, click the **Configure Roles**
button (cog icon) to see the **Node Settings**, showing a list of all
available roles and checkboxes to enable or disable each one. Click
**Save** to apply changes.

See also the :ref:`kato role <kato-command-ref-role-add>` and :ref:`kato
info <kato-command-ref-info>` command documentation for the CLI
equivalents, and the :ref:`Cluster Setup <cluster-setup>` section for
information on adding nodes to the cluster.

Applications & Organizations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Links to the :ref:`Applications <user-console-apps-list>` and
:ref:`Organizations <user-console-organizations-list>` lists. 

Domains
^^^^^^^

A filterable list of all domains configured on the system, showing
whether they are :ref:`Shared or Owned domains <domains-routes-domains>`.

Services
^^^^^^^^

A filterable list of service instances on the system, and a list of
available service types (with their version).

.. _console-users:

Users
^^^^^

The Users section displays a list of users and admins. 

* Click **+ Add User** to add users.

* Click on the user name or email address to view account details or
  change the password.
  

.. _console-dashboard:

Dashboards
^^^^^^^^^^

.. index:: Cluster Usage

.. index:: DEA Usage

.. _console-cluster-usage:

Memory Summary
~~~~~~~~~~~~~~

Stackato tracks the amount of memory used by applications across all DEA
nodes and shows various reports. Available memory is calculated based on
the system memory of the DEA nodes multiplied by the :ref:`Max Memory
Percentage <console-settings-dea>`. **Memory Summary** shows how much
memory:

* has been assigned to Organizations via :ref:`Quota Plans <console-settings-quota-definitions>`
* is available on DEA nodes 
* remains unallocated
* has been allocated
* is currently in use
  
  
DEA Usage
~~~~~~~~~

Memory usage statistics and a usage bar graph for each DEA node in the pool.

Placement Zone Usage
~~~~~~~~~~~~~~~~~~~~

Memory usage statistics and a usage bar graph for all configured
:ref:`Placement Zones <dea-zones-placement>` 

Availability Zone Usage
~~~~~~~~~~~~~~~~~~~~~~~

Memory usage statistics and a usage bar graph for all configured
:ref:`Availability Zones <dea-zones-availability>` 

Router Stats
~~~~~~~~~~~~

Shows realtime results for incoming requests (connections per second),
routing errors (errors per second), and an overview of the cumulative
requests to the system.

Primary Node Status Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~

Displays graphs for server statistics: CPU, Load, Memory, Disk
Operations, Disk Space, Processes, and Swap (primary node or micro cloud
only).


.. _console-cloud-events:

Cloud Events
^^^^^^^^^^^^

The Cloud Events section displays a list of events (including errors and
warnings) on the Stackato server. The events can be filtered by Severity
or Type, or by using a substring match in the Search field.

.. _console-settings:

Settings
--------

The Settings menu gives access to the following Console and system settings:


.. _console-settings-stackato:

Stackato Settings
^^^^^^^^^^^^^^^^^

* **System Settings**:

  * **Logging Level**: Changes the verbosity of Stackato logs from
    'debug2' (most verbose) through 'off' (silent).
  
  * **Support Email**: The email address displayed to end users when
    errors are encountered. Use an address which is monitored by Stackato
    administrators.

* **App Store URLs**: URIs for :ref:`App Store Definition YAML files
  <app-store-definition>` which populate the App Store. The URIs need
  not be public, but must be accessible from the controller node.

* **Allowed Repos**: Debian package repositories allowed in application
  containers. End users can install additional packages (e.g. with
  ``apt-get`` or ``aptitude``) only from these repositories. When adding
  new repositories, GPG keys for each new repo must also be added to the
  Docker base container (see :ref:`Allowed Repositories <server-config-allowed-repositories>`).

.. index:: maintenance mode

.. _console-settings-maintenance-mode:

* **Maintenance Mode**: Shuts down API requests but continues to serve
  web requests, useful when performing system operations such as
  importing and exporting data for upgrades. When the primary node
  enters maintenance mode, the Management Console becomes "read only"
  with the exception of this toggle (to bring it back online).


.. _console-settings-applications:

Applications
^^^^^^^^^^^^

* **Reserved URIs**: Virtual hostnames and URIs reserved for use by the
  Stackato system which cannot be used for end user applications. This
  prevents users from deploying applications on URIs which the system
  requires (e.g. 'api'), or for cases where a particular DNS sub-domain
  record is not being resolved to the Stackato system.


Console
^^^^^^^

Various settings and templates to customize the look and feel of the
Management Console. The settings are divided into the following
categories:

* **Product**: Options to rename and reversion Stackato for OEM
  deployments, change the default locale (currently only 'en' and 'de'
  available), choose a different URL for documentation, or disable
  console pingbacks.

* **Client**: A version number setting and alternative paths/URLs for
  alternative or renamed CLI clients.
  
* **Look and Feel**: Change the favicon, header, footer, or background
  color.

* **Welcome Page**: EJS templated HTML to display on the Welcome page
  (see above).

* **Support Page**: EJS templated HTML to display on the Support page.
  Change this if you are supporting your end users directly.

* **Eula Content**: End User License Agreement. Change this only if you
  are an OEM customer exposing Stackato to end users under your own
  specific licensing terms.

* **Custom Stylesheet**: A single CSS file used to override any existing
  styling in the Management Console. Inspect the Console with browser
  tools such as Firebug or Chrome Developer Tools to see the class names
  and IDs.

Detailed instructions for customizing and branding Stackato can be found
in the :ref:`Theming and Customization <customize>` section.


.. _console-settings-dea:

.. index:: Max Memory Percentage

.. index:: max_memory_percentage

DEA
^^^

* **Max Memory Percentage**: The percentage of physical memory each DEA
  node can use for hosted applications. The 80% default setting leaves
  enough memory for the OS and DEA processes on a node with 4GB of RAM.
  This can be increased on nodes with more memory available (e.g. to 90%
  on a node with 8GB of RAM). Do not exceed 100% unless the system
  correctly supports swap space and has it enabled. Restart all DEA
  roles/nodes to apply the change.
  
* **Max Staging Duration**: The maximum time allowed for application
  staging. 


.. _console-settings-logyard:

Logyard
^^^^^^^

Lists current log :ref:`Drains <logging-drains-system>` and the log
drain retry limits.
Drains and limits cannot be changed in this interface;
use the :ref:`kato log drain ... <kato-command-ref-log-drain-add>`
commands and :ref:`kato config ... <kato-command-ref-config>`
commands.


.. _console-settings-quota-definitions:

.. _console-settings-quota-plans:

Quota Plans
^^^^^^^^^^^

Lists the Quota Plans available to apply to Organizations on the
system. To edit a definition, click the edit button on the right. The
following fields can be modified:

* **Name**: The definition name. Do not change this without also
  changing the settings of any Organization using the definition.
* **Memory Usage Limit**: The total amount of application RAM (in MB)
  that can be allocated to user applications.
* **Total Services**: The total number of service instances that can be
  allocated.
* **Total Droplets**: The number of droplets stored (per application)
  for versioning and rollback .
* **Allow Sudo**: Allow users in the Organization ``sudo`` privileges
  within their application containers.

To create a new definition use the :ref:`stackato quota create
<command-quota create>` command.
 

.. _console-settings-filesystem:

File System
^^^^^^^^^^^

* **Capacity**: Maximum number of service slots to allocate.
* **Max FS Size**: Maximum size on disk for filesystem services in MB.
* **Allow Over-provisioning**: Ignore the Capacity setting.


.. _console-settings-harbor:

Harbor
^^^^^^

Settings for the :ref:`Harbor <harbor>` TCP/UDP port service.

* **External Host**: The public IP (if configured) for the Harbor node.

* **External Hostname**: The public hostname for the Harbor node.

* **Port Range Minimum**: Sets the minimum for the exposed port range (default: 35000).

* **Port Range Maximum**: Sets the maximum for the exposed port range (default: 40000).


See :ref:`Harbor: Requirements & Setup <harbor-setup>` for more information.


.. _console-settings-data-services:

Data Services
^^^^^^^^^^^^^

* **Allow Over-provisioning**: Ignore the Capacity setting.

* **Capacity**: Maximum number of service slots to allocate.

* **Max DB size**: Maximum size on disk for database services.

* **Max Memory**: Maximum amount of physical memory to allocate the service.

* **Memcached Memory**: Maximum amount of physical memory to allocate for memcached instances.

* **Max FS Size**: Maximum size on disk for filesystem services.


.. _console-settings-register:

Register Stackato
^^^^^^^^^^^^^^^^^

Stackato ships without any license key installed. In this configuration you may use the VM as a stand-alone system using up to 4GB of RAM under the `Stackato Micro Cloud License Agreement <http://www.activestate.com/stackato/micro-cloud-license-agreement>`__.

With a Free License Key you can create a :ref:`Stackato cluster <cluster-setup>` using up to 20GB of memory. Click the **Get a Free License** button to register on the ActiveState website. Paste the generated key in the **License Key** field to activate.

For clusters larger than 20GB with technical support, contact `ActiveState Sales <http://www.activestate.com/contact-stackato?intcmp=contact&intdet=stackato-home>`_ for Stackato Enterprise pricing and options.
