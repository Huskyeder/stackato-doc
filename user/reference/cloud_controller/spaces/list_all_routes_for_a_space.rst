
List all routes for a space
---------------------------


GET /v2/spaces/:guid/routes
~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIwIiwiZW1haWwiOiJlbWFpbC0xNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.8NNAW0zYSdCHN6U6790t2A4GNxkLQXvclIgBg0vgGAA
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/spaces/985f8f5e-08a4-4116-b888-4b2de632ae7d/routes


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/985f8f5e-08a4-4116-b888-4b2de632ae7d/routes" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIwIiwiZW1haWwiOiJlbWFpbC0xNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.8NNAW0zYSdCHN6U6790t2A4GNxkLQXvclIgBg0vgGAA" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 5eef13d3-dca6-458f-a665-2635296382e4
  Content-Length: 745
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 1,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "de69ee86-3aa3-43e3-9c15-2cd8d8e83d5f",
          "url": "/v2/routes/de69ee86-3aa3-43e3-9c15-2cd8d8e83d5f",
          "created_at": "2014-06-19T17:18:48-07:00",
          "updated_at": null
        },
        "entity": {
          "host": "host-1",
          "domain_guid": "7ee5d616-4e3c-4293-88d5-69ddae02490a",
          "space_guid": "985f8f5e-08a4-4116-b888-4b2de632ae7d",
          "domain_url": "/v2/domains/7ee5d616-4e3c-4293-88d5-69ddae02490a",
          "space_url": "/v2/spaces/985f8f5e-08a4-4116-b888-4b2de632ae7d",
          "apps_url": "/v2/routes/de69ee86-3aa3-43e3-9c15-2cd8d8e83d5f/apps"
        }
      }
    ]
  }

