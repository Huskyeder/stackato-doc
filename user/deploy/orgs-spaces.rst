.. _orgs-spaces:

.. index:: Organizations
.. index:: Spaces

Organizations & Spaces
======================

.. only:: not public

    This documentation is derived from `Organizations and Spaces
    <http://docs.cloudfoundry.com/docs/using/managing-apps/orgs-and-spaces.html>`__
    in the Cloud Foundry documentation.

Organizations and Spaces are the main organizational units in Stackato.

* Organizations have Users, Spaces, and Domains
* Spaces have Users, Applications, and Service Instances
* Applications have Routes (which are derived from Domains)

.. _orgs-spaces-organizations:

Organizations
-------------

An organization is a top-level group of users, spaces, and domains. Only
Stackato admins (accounts with global superuser privileges) can create
Organizations.

Each organization is assigned a :ref:`Quota Definition
<server-config-quota-definitions>`, a set of limits on memory,
applications, and service instances which is share between all members
of the organization.

Once an organization user has been assigned the :ref:`Manager role
<orgs-spaces-roles>`, that Manager can take over adding further users,
assigning roles, and :ref:`adding domains <domains-routes-domains>`.


.. _orgs-spaces-spaces:

Spaces
------

Spaces are sub-groups of organizations. An organization can contain
multiple spaces (e.g. **dev**, **test**, and **production**). 

Members of an organization can be given access to one or more of its
spaces. Space members with the Developer or Manager role can view apps,
deploy apps, and provision service instances to the space.


Management
----------

Managers and Stackato admins can manage spaces and organizations with
the :ref:`stackato client <client>` or the :ref:`Management Console
<user-console-organizations>`.

.. _orgs-spaces-roles:
  
Users & Roles
-------------

Stackato users can take on different roles within organizations and
spaces. These roles can be assigned by a Manager of the relevant scope
or a Stackato Admin: 

Org Roles
^^^^^^^^^

* Manager: Can invite/manage users, select/change the plan, establish
  spending limits
  
* Billing Manager: Can edit/change the billing account info, payment
  info
  
* Auditor: View only access to all org and space info, settings, reports

Space Roles
^^^^^^^^^^^

* Space Manager: Can invite/manage users, enable features for a given
  space
  
* Space Developer: Can create, delete, manage applications and services,
  full access to all usage reports and logs
  
* Space Auditor: View only access to all space information, settings,
  reports, logs
  

