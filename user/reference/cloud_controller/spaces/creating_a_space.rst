
Creating a space
----------------


POST /v2/spaces/
~~~~~~~~~~~~~~~~


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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE3IiwiZW1haWwiOiJlbWFpbC0xMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI3fQ.rcb7rqwOggyqI3ha7_RH3jH300Qodybm_OsV17CCLN8
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/spaces


Body
^^^^

::

  {"name":"development","organization_guid":"guid-90a03e48-ed1f-485d-bf50-4372c9eb3984","organization_guid":"3b530dec-e463-410c-9c02-bc70b7404791"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces" -d '{"name":"development","organization_guid":"guid-90a03e48-ed1f-485d-bf50-4372c9eb3984","organization_guid":"3b530dec-e463-410c-9c02-bc70b7404791"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE3IiwiZW1haWwiOiJlbWFpbC0xMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI3fQ.rcb7rqwOggyqI3ha7_RH3jH300Qodybm_OsV17CCLN8" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5
  X-VCAP-Request-ID: 41cb3c0e-732b-470e-bcc4-fc7f6d5b5aa4
  Content-Length: 1152
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
      "guid": "141ad233-3103-406a-ae65-660d4c2642c5",
      "url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5",
      "created_at": "2014-06-19T17:18:47-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "development",
      "organization_guid": "3b530dec-e463-410c-9c02-bc70b7404791",
      "is_default": false,
      "organization_url": "/v2/organizations/3b530dec-e463-410c-9c02-bc70b7404791",
      "developers_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/developers",
      "managers_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/managers",
      "auditors_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/auditors",
      "apps_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/apps",
      "routes_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/routes",
      "domains_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/domains",
      "service_instances_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/service_instances",
      "app_events_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/app_events",
      "events_url": "/v2/spaces/141ad233-3103-406a-ae65-660d4c2642c5/events"
    }
  }


Audit Records Created By The Request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Audit Record: audit.space.create
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------------------------------------+
| Attribute Name    | Value                                                              |
|                   |                                                                    |
+===================+====================================================================+
| id                | 36                                                                 |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| guid              | 2103f25a-2c53-430c-a5da-f0f4aec647d8                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| created_at        | 2014-06-19 17:18:47 -0700                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| updated_at        |                                                                    |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| timestamp         | 2014-06-19 17:18:47 -0700                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| type              | audit.space.create                                                 |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actor             | uaa-id-17                                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actor_type        | user                                                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actee             | 141ad233-3103-406a-ae65-660d4c2642c5                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actee_type        | space                                                              |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| metadata          | ::                                                                 |
|                   |                                                                    |
|                   |   {                                                                |
|                   |     "request": {                                                   |
|                   |       "name": "development",                                       |
|                   |       "organization_guid": "3b530dec-e463-410c-9c02-bc70b7404791", |
|                   |       "is_default": false                                          |
|                   |     }                                                              |
|                   |   }                                                                |
|                   |                                                                    |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| space_id          | 41                                                                 |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| organization_guid | 3b530dec-e463-410c-9c02-bc70b7404791                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| space_guid        | 141ad233-3103-406a-ae65-660d4c2642c5                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actor_name        | email-11@somedomain.com                                            |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actee_name        | development                                                        |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+

