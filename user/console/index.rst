.. _management-console:

.. index:: Console
.. index:: Management Console

Management Console
==================

The Management Console is a web interface for Stackato. Using the same
API as the ``stackato`` CLI client, it provides access to a subset of
features for deploying, scaling, and configuring applications as well as
monitoring quota usage, and viewing logs.

The interface displays more options and settings for Admin users than it
does for regular end users. The features described below are available
to end users. See the Stackato Admin Guide for information on the
Management Console view for Admins.

.. _user-console-welcome:

Welcome
-------

The top-level page of the Management Console displays quick links to the
most used resources and views:

* Read the Documentation: By default, a link to `docs.stackato.com <http://docs.stackato.com/>`__

* Contact Support: Link to the :ref:`Support <user-console-support>` page.

* Download the Client: Link to the locally hosted :ref:`CLI client <client>` download.

* Deploy from the App Store: Link to the :ref:`App Store <user-console-app-store>`.

* Organizations Membership: Link to the end user view of the :ref:`Organizations <user-console-organizations>` page.

* Account Details: Shows the account details of the current user. Also
  accessible from the drop down list at the top left.

.. _user-console-apps-list:

Applications List
-----------------

The Applications list is accessible from the top menu. It shows all
applications deployed under the current user's Organizations.

The list shows:

* the application name
* the Organization it belongs to
* the Space it was deployed to
* the Description field
* its current state (e.g. STARTED or STOPPED)
* Application Access (i.e. if :ref:`Application SSO <application-sso>` is enabled)

The list can be sorted by name or state, and filtered by:

* State
* Application Access
* Restart Required

The list includes applications deployed to all Spaces in the current
user's Organizations, even those for which the user may not have access.
Applications in such Spaces are viewable, but no changes can be made to
them.

Clicking on the application name opens its Application View.

.. _user-console-app:

Application View
^^^^^^^^^^^^^^^^

The top navigation of the Application view gives the name and status of
the application followed by its organization / space. The view includes
the following tabs: 

* Summary: General information about the app including its description,
  which buildpack it uses, when it was created, and when it was last
  modified.

* Timeline: A realtime stream of events and discussions relevant to the
  Application. Events in the application's history appear here as
  notifications which can be commented on by members of the Space.

* Environment Variables: Environment variables that have been explicitly
  set in the application container (via application config, client
  commands, or this interface). Default variables, those set by the
  application framework, or those added by the system for data services
  are excluded from this view.

* Files: A browsable list of directories and files in each application
  instance.
  
* Instances:

  * Application Autoscaling Settings: CPU Threshold and Instances
    sliders for configuring :ref:`Application Autoscaling
    <app-autoscaling>`.
  * Instance Status: A list of application instances showing the status
    and host DEA IP address of each.

* Logs Stream: A real time :ref:`stream of the application logs
  <application_logs>`.

* Routes: The URLs mapped to the application. These :ref:`Routes
  <domains-routes-routes>` are made up of the name of the application
  name (a virtual hostname) followed by a dot and a :ref:`Domain
  <domains-routes-domains>` (assigned to the Org and Space).

* Services: Data (and other) service instances bound to the Application.

* Settings: The number of application instances, disk space, and memory
  allotment used by the application. This usage counts against the
  organizations's quota.

.. _user-console-organizations-list:

Organizations List
------------------

The Organizations list is accessible from the top menu. It shows all
:ref:`Organizations <orgs-spaces-organizations>` which the current user
is a member of. The list is searchable by name.

Clicking on any Organization name opens the Organization view.

.. _user-console-organizations:

Organization View
^^^^^^^^^^^^^^^^^

The Organizations page shows a list of all :ref:`Organizations
<orgs-spaces>` that the current user is a member of. Depending on how
the Stackato PaaS has been set up, you may only be a member of a single
Organization.

Clicking on the Organization name opens a view of that organization,
including the following tabs:

* Spaces: A list of Spaces that belong to the Organization.
  Clicking on a Space in the list opens a :ref:`view of that Space
  <user-console-space>`.
  
* Users: A list of Users who are members of the Organization, showing
  the Email address and Organization :ref:`Roles <orgs-spaces-roles>` of
  each.
  
  * Users: can view organization quotas, domains, spaces and users.
  
  * Manager: can add domains and spaces to the organization, but not
    users.
  
* Quota Usage:

  * Memory: The amount of RAM (in GB) available to the Organization, and
    how much of it is currently used by applications.

  * Services: The number of deployed / allotted services.

* Domains: Domains belonging to the Organization that can be used by
  applications deployed to :ref:`Spaces <orgs-spaces>` in the
  Organization. Typically, these will be a subdomain of the Stackato
  system itself. For example, an Organization called "acme" on a PaaS
  with the address "api.example.org" might have the domain
  "\*.acme.example.org".
  
  
.. _user-console-space:

Space View
^^^^^^^^^^

* Apps: A sortable, filterable list of applications in the Space.
  Clicking an app name opens an :ref:`administrative view of that
  application <user-console-app>`.

* Timeline: A realtime stream of events and discussions relevant to
  the Space. The creation, update, and deletion of apps and services appear
  here as notifications which can be commented on by members of the
  Space. Discussions can be started by any member, tagged, and assigned
  to an application (which makes the item visible in the Application view).

* Services: A list of services bound to applications in the Space.
  Clicking a service name opens a ref:`administrative view of that
  service <user-console-service>`.

* Managers: Managers can invite/manage users, enable features for a
  given space.

* Developers: Developers can create, delete, manage applications and
  services, full access to all usage reports and logs.

* Auditors: Auditors have view only access to all space information,
  settings, reports, logs.


.. _user-console-service:

Service Instance View
^^^^^^^^^^^^^^^^^^^^^

Clicking a service instance name anywhere in the interface brings up a
view of that service instance showing:

* a description of the service type
* when it was created
* when it was last modified
* which host it is running on
* which port it is exposed on
* the service instance name (not the canonical database name)
* current state

For more information on a service instance (i.e. its credentials), use
the :ref:`stackato service <command-service>` command.


.. _user-console-app-store:

App Store
---------

The App Store is a collection of ready-to-run applications which can
be deployed to Stackato by fetching the source code from Git repositories.

Click the **Deploy App** button to start it on Stackato. You will be
prompted to choose a Space and Domain for the app if there are multiple
options available for you.

.. _user-console-support:

Support
-------

A list of resources for getting support on using Stackato.