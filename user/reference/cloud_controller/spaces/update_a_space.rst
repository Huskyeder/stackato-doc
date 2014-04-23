
Update a space
--------------


PUT /v2/spaces/:guid
~~~~~~~~~~~~~~~~~~~~


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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM5IiwiZW1haWwiOiJlbWFpbC0zOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.Y27doIE4wBpHJlFI1wonVu6zFGCBLY7_3bTSNynNQrA
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817


Body
^^^^

::

  {"name":"New Space Name"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817" -d '{"name":"New Space Name"}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM5IiwiZW1haWwiOiJlbWFpbC0zOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.Y27doIE4wBpHJlFI1wonVu6zFGCBLY7_3bTSNynNQrA" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 7d5c9c17-b557-4c45-b7c3-c95f198c6561
  Content-Length: 1102
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  201 Created


Body
^^^^

::

  {
    "metadata": {
      "guid": "af69d9a2-e405-425a-98c3-a824c555d817",
      "url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817",
      "created_at": "2014-04-07T11:19:10-07:00",
      "updated_at": "2014-04-07T11:19:10-07:00"
    },
    "entity": {
      "name": "New Space Name",
      "organization_guid": "d067d221-fe5d-487f-96ed-0261aa0aa8af",
      "is_default": false,
      "organization_url": "/v2/organizations/d067d221-fe5d-487f-96ed-0261aa0aa8af",
      "developers_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/developers",
      "managers_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/managers",
      "auditors_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/auditors",
      "apps_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/apps",
      "domains_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/domains",
      "service_instances_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/service_instances",
      "app_events_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/app_events",
      "events_url": "/v2/spaces/af69d9a2-e405-425a-98c3-a824c555d817/events"
    }
  }


Audit Records Created By The Request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Audit Record: audit.space.update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------+
| Attribute Name    | Value                                |
|                   |                                      |
+===================+======================================+
| id                | 1                                    |
|                   |                                      |
+-------------------+--------------------------------------+
| guid              | 9a31e5a7-5f98-4e21-88b6-0b38c7dd0842 |
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
| type              | audit.space.update                   |
|                   |                                      |
+-------------------+--------------------------------------+
| actor             | uaa-id-39                            |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_type        | user                                 |
|                   |                                      |
+-------------------+--------------------------------------+
| actee             | af69d9a2-e405-425a-98c3-a824c555d817 |
|                   |                                      |
+-------------------+--------------------------------------+
| actee_type        | space                                |
|                   |                                      |
+-------------------+--------------------------------------+
| metadata          | ::                                   |
|                   |                                      |
|                   |   {                                  |
|                   |     "request": {                     |
|                   |       "name": "New Space Name"       |
|                   |     }                                |
|                   |   }                                  |
|                   |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| space_id          | 1                                    |
|                   |                                      |
+-------------------+--------------------------------------+
| organization_guid | d067d221-fe5d-487f-96ed-0261aa0aa8af |
|                   |                                      |
+-------------------+--------------------------------------+
| space_guid        | af69d9a2-e405-425a-98c3-a824c555d817 |
|                   |                                      |
+-------------------+--------------------------------------+

