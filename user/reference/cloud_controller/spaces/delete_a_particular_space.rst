
Delete a Particular Space
-------------------------


DELETE /v2/spaces/:guid
~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| Name              | Description                             | Default | Valid Values | Example Values                              |
|                   |                                         |         |              |                                             |
+===================+=========================================+=========+==============+=============================================+
| guid              | The guid of the space.                  |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| name              | The name of the space                   |         |              | - development                               |
|                   |                                         |         |              | - demo                                      |
|                   |                                         |         |              | - production                                |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| organization_guid | The guid of the associated organization |         |              | - guid-90a03e48-ed1f-485d-bf50-4372c9eb3984 |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| developer_guids   | The list of the associated developers   |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| manager_guids     | The list of the associated managers     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| auditor_guids     | The list of the associated auditors     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| domain_guids      | The list of the associated domains      |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------+-----------------------------------------------------------------------+
| Name  | Description                                                           |
|       |                                                                       |
+=======+=======================================================================+
| async | Will run the delete request in a background job. Recommended: 'true'. |
|       |                                                                       |
+-------+-----------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI3fQ.c5AwkJp_6_A32oQmD2e20b2Tj6UT4obRbuyq1Hz2HLc
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/spaces/f98621d1-c72d-4a71-b1fc-f710c1221e4e


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/f98621d1-c72d-4a71-b1fc-f710c1221e4e" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI3fQ.c5AwkJp_6_A32oQmD2e20b2Tj6UT4obRbuyq1Hz2HLc" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 93e385b3-4541-451d-9a55-6ed293bf0e80
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content


Audit Records Created By The Request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Audit Record: audit.space.delete-request
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------+
| Attribute Name    | Value                                |
|                   |                                      |
+===================+======================================+
| id                | 35                                   |
|                   |                                      |
+-------------------+--------------------------------------+
| guid              | d35b7007-03ec-49e2-8306-e029e7df0e87 |
|                   |                                      |
+-------------------+--------------------------------------+
| created_at        | 2014-06-19 17:18:47 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| updated_at        |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| timestamp         | 2014-06-19 17:18:47 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| type              | audit.space.delete-request           |
|                   |                                      |
+-------------------+--------------------------------------+
| actor             | uaa-id-16                            |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_type        | user                                 |
|                   |                                      |
+-------------------+--------------------------------------+
| actee             | f98621d1-c72d-4a71-b1fc-f710c1221e4e |
|                   |                                      |
+-------------------+--------------------------------------+
| actee_type        | space                                |
|                   |                                      |
+-------------------+--------------------------------------+
| metadata          | ::                                   |
|                   |                                      |
|                   |   {                                  |
|                   |     "request": {                     |
|                   |       "recursive": false             |
|                   |     }                                |
|                   |   }                                  |
|                   |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| space_id          |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| organization_guid | 9c4bc150-8a25-4b82-b62b-7468018168fe |
|                   |                                      |
+-------------------+--------------------------------------+
| space_guid        | f98621d1-c72d-4a71-b1fc-f710c1221e4e |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_name        | email-10@somedomain.com              |
|                   |                                      |
+-------------------+--------------------------------------+
| actee_name        | name-246                             |
|                   |                                      |
+-------------------+--------------------------------------+

