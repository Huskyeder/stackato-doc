
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
| organization_guid | The guid of the associated organization |         |              | - guid-e6a9f1c9-e2dd-43b7-888b-dd04ad8fd826 |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQyIiwiZW1haWwiOiJlbWFpbC00MkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.ZlA6tZjlKjWrQBx80A2eHyshLyxEGQKktSmXTHqgeJc
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/spaces/83628c67-2086-43b6-bc15-8c10ad4aeac0


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/83628c67-2086-43b6-bc15-8c10ad4aeac0" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQyIiwiZW1haWwiOiJlbWFpbC00MkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.ZlA6tZjlKjWrQBx80A2eHyshLyxEGQKktSmXTHqgeJc" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 7ff96f9d-93e1-482c-8e06-281d379080a5
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
| id                | 1                                    |
|                   |                                      |
+-------------------+--------------------------------------+
| guid              | 59df8a5b-6730-472e-8234-43cabb00b7ff |
|                   |                                      |
+-------------------+--------------------------------------+
| created_at        | 2014-04-07 11:19:10 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| updated_at        |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| timestamp         | 2014-04-07 11:19:10 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| type              | audit.space.delete-request           |
|                   |                                      |
+-------------------+--------------------------------------+
| actor             | uaa-id-42                            |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_type        | user                                 |
|                   |                                      |
+-------------------+--------------------------------------+
| actee             | 83628c67-2086-43b6-bc15-8c10ad4aeac0 |
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
| organization_guid | befaa453-57e7-4de5-a96c-0b4fbe6dee1a |
|                   |                                      |
+-------------------+--------------------------------------+
| space_guid        | 83628c67-2086-43b6-bc15-8c10ad4aeac0 |
|                   |                                      |
+-------------------+--------------------------------------+

