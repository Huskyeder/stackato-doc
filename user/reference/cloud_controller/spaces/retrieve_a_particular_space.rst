
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQxIiwiZW1haWwiOiJlbWFpbC00MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.V-oKHBYuB-B2shRVRYWQzlX3euQ--muzUefQPwpvgoE
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQxIiwiZW1haWwiOiJlbWFpbC00MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ.V-oKHBYuB-B2shRVRYWQzlX3euQ--muzUefQPwpvgoE" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 66190038-bff6-4954-a561-3a3934107082
  Content-Length: 1073
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
      "guid": "25b40658-329f-4d2e-bda5-5bb8d01aad3a",
      "url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a",
      "created_at": "2014-04-07T11:19:10-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name-164",
      "organization_guid": "3e30c75b-adcc-4a53-b9b6-23c09c912475",
      "is_default": false,
      "organization_url": "/v2/organizations/3e30c75b-adcc-4a53-b9b6-23c09c912475",
      "developers_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/developers",
      "managers_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/managers",
      "auditors_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/auditors",
      "apps_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/apps",
      "domains_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/domains",
      "service_instances_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/service_instances",
      "app_events_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/app_events",
      "events_url": "/v2/spaces/25b40658-329f-4d2e-bda5-5bb8d01aad3a/events"
    }
  }

