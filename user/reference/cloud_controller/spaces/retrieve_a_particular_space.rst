
Retrieve a Particular Space
---------------------------


GET /v2/spaces/:guid
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE4IiwiZW1haWwiOiJlbWFpbC0xMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.hL_1UGUpb-XH34oftbGPWdlwUxs219gKslWaTJMjGJA
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE4IiwiZW1haWwiOiJlbWFpbC0xMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.hL_1UGUpb-XH34oftbGPWdlwUxs219gKslWaTJMjGJA" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: c43e0e0b-d47a-4b28-a355-69b4b97b06c2
  Content-Length: 1149
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "metadata": {
      "guid": "5eaa75ca-c127-4828-8263-4cdde9207bff",
      "url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff",
      "created_at": "2014-06-19T17:18:47-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name-266",
      "organization_guid": "89730508-b505-4d53-8926-af0957360e91",
      "is_default": false,
      "organization_url": "/v2/organizations/89730508-b505-4d53-8926-af0957360e91",
      "developers_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/developers",
      "managers_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/managers",
      "auditors_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/auditors",
      "apps_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/apps",
      "routes_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/routes",
      "domains_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/domains",
      "service_instances_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/service_instances",
      "app_events_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/app_events",
      "events_url": "/v2/spaces/5eaa75ca-c127-4828-8263-4cdde9207bff/events"
    }
  }

