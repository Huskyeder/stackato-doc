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
* its current state (STARTED or STOPPED)
* its staging state (STAGED or FAILED)
* Application Access (i.e. if :ref:`Application SSO <application-sso>` is enabled)

The list can be sorted by name or state, and filtered by:

* State
* Staging State
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

* **Summary**: General information about the app including its
  description (optional), which buildpack it uses, when it was created,
  and when it was last modified. The application state will appear in
  parentheses beside the application name, and will be one of the
  following:
  
  * Staging: currently staging the application droplet.

  * Staging Failed. Check Logs:  staging of application droplet has
    failed
  
  * Online: successfully staged as a droplet and application instances
    are running
  
  * Flapping: successfully staged as a droplet and application instances
    are running, but 1 or more instances are flapping (see below)
  
  * Down: successfully staged as a droplet and application instances
    have been created, but all instances are down. This state will
    typically not be seen as any one instance will only be down for a
    short period of time before starting or being removed.
  
  * Offline: successfully staged the application droplet, but no
    application instances have been created and started.

* **Timeline**: A real-time stream of events and discussions relevant to
  the Application. Events in the application's history appear here as
  notifications which can be commented on by members of the Space.

* **App Versions**: A rolling list of code and setting changes to an
  application. Clicking **Rollback to this version** for any listed
  version reverts the application to the selected version's state and
  creates a new version. See :ref:`App Versions <app-versions>` for
  details.

* **Environment Variables**: Environment variables that have been
  explicitly set in the application container (via application config,
  client commands, or this interface). Default variables, those set by
  the application framework, or those added by the system for data
  services are excluded from this view.

* **Files**: A browse-able list of directories and files in each
  application instance.
  
* **Instances**:

  * Application Autoscaling Settings: CPU Threshold and Instances
    sliders for configuring :ref:`Application Autoscaling
    <app-autoscaling>`.
  * Instance Status: A list of application instances showing the status
    and host DEA IP address of each. The normal sequence of application
    instance states is DOWN -> STARTING -> RUNNING. The possible states
    are:
    
    * DOWN: Instance has been created but is not registered yet.
      This is typically a transient state that occurs when a new
      application instance is provisioned or an existing application
      instance taken down (i.e., via app autoscaling).
    
    * STARTING: Instance is created and in the process of starting. 
    
    * RUNNING: Instance is running. This is the normal state for a
      healthy application instance.
    
    * FLAPPING: Instance has been repeatedly crashing over a short
      period of time and the system’s health manager has been
      automatically trying to restore it. If the health manager is
      unable to restore the application instance, the instance will
      transition to the CRASHED state. This typically indicates a
      problem such as a software bug in the application itself. Check
      the application logs for the source of the crashes.
    
    * CRASHED: Instance is no longer running because it has crashed
      and could not be successfully restored (the health manager has
      stopped trying to restart it). As with FLAPPING, this normally
      indicates a bug in the application.
    

* **Logs Stream**: A real time :ref:`stream of the application logs
  <application_logs>`.

* **Routes**: The URLs mapped to the application. These :ref:`Routes
  <domains-routes-routes>` are made up of the name of the application
  name (a virtual hostname) followed by a dot and a :ref:`Domain
  <domains-routes-domains>` (assigned to the Org and Space).

* **Services**: Data (and other) service instances bound to the Application.

* **Settings**: The number of application instances, disk space, and
  memory allotment used by the application. This usage counts against
  the organizations's quota.

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

* **Spaces**: A list of Spaces that belong to the Organization.
  Clicking on a Space in the list opens a :ref:`view of that Space
  <user-console-space>`.
  
* **Users**: A list of Users who are members of the Organization,
  showing the Email address and Organization :ref:`Roles
  <orgs-spaces-roles>` of each.
  
  * Users: can view organization quotas, domains, spaces and users.
  
  * Manager: can add domains and spaces to the organization, but not
    users.

* **Space Quota Plans**:  A filterable list of space quota plans.
  
* **Quota Usage**:

  * Memory: The amount of RAM (in GB) available to the Organization, and
    how much of it is currently used by applications.

  * Services: The number of deployed / allotted services.

* **Domains**: Domains belonging to the Organization that can be used by
  applications deployed to :ref:`Spaces <orgs-spaces>` in the
  Organization. Typically, these will be a subdomain of the Stackato
  system itself. For example, an Organization called "acme" on a PaaS
  with the address "api.example.org" might have the domain
  "\*.acme.example.org".
  
  
.. _user-console-space:

Space View
^^^^^^^^^^

* **Apps**: A sortable, filterable list of applications in the Space.
  Clicking an app name opens an :ref:`administrative view of that
  application <user-console-app>`.

* **Timeline**: A real-time stream of events and discussions relevant to
  the Space. The creation, update, and deletion of apps and services
  appear here as notifications which can be commented on by members of
  the Space. Discussions can be started by any member, tagged, and
  assigned to an application (which makes the item visible in the
  Application view).

* **Quota Usage**:  If the Space has a space quota plan assigned to it, the
  usage is compared against it.  Otherwise, the Space usage is compared
  against the Organization quota plan.

  * Memory: The amount of RAM (in GB) available to the Organization, and
    how much of it is currently used by applications.

  * Services: The number of deployed / allotted services.

  * Routes: The number of created / allotted routes.

* **Services**:

  * Managed: A list of managed services bound to applications in the Space.

  * User Provided: A list of user provided services bound to applications
    in the Space. New user provided services can be created by clicking the
    'Create User Provided Service' button.

  In both sections, clicking a service name opens a ref:`administrative view of that
  service <user-console-service>`.

* **Managers**: Managers can invite/manage users, enable features for a
  given space.

* **Developers**: Developers can create, delete, manage applications and
  services, full access to all usage reports and logs.

* **Auditors**: Auditors have view only access to all space information,
  settings, reports, logs.


.. _user-console-service:

Service Instance View
^^^^^^^^^^^^^^^^^^^^^

Clicking a service instance name anywhere in the interface brings up a
view of that service instance:

Summary
~~~~~~~

The summary of a service displays:
* a description of the service instance type
* when it was created
* when it was last modified

For more information on a service instance, use the 
:ref:`stackato service <command-service>` command.

Credentials
~~~~~~~~~~~

Lists the credentials for the service instance.

If a the service is a User Provided Service, new credentials can be added,
and existing credentials may be edited.

App Bindings
~~~~~~~~~~~~

A list of applications that have bindings to this service instance.
Clicking an app name opens an :ref:`administrative view of that
application <user-console-app>`.



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