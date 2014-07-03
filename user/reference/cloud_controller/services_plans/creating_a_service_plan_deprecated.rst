
Creating a service plan (deprecated)
------------------------------------


POST /v2/service_plans
~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| Name         | Description                                                                                   | Default | Valid Values | Example Values                         |
|              |                                                                                               |         |              |                                        |
+==============+===============================================================================================+=========+==============+========================================+
| guid         | The guid of the service plan                                                                  |         |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| name         | The name of the service plan                                                                  |         |              | - 100mb                                |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| free         | A boolean describing if the service plan is free                                              |         | - true       |                                        |
|              |                                                                                               |         | - false      |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| description  | A description of the service plan                                                             |         |              | - Let's you put data in your database! |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| extra        | A JSON string with additional data about the plan                                             |         |              | - {"cost": "$2.00"}                    |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| unique_id    | A guid for the service plan in the service broker (not the same as the cloud controller guid) |         |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| public       | A boolean describing that the plan is visible to the all users                                | true    |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| service_guid | The guid of the related service                                                               |         |              | - deadbeef                             |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ0IiwiZW1haWwiOiJlbWFpbC0zOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.m_cPhaKc-BlM3iRVlguRNOJ7psPFVcCuefkUJ6GzJ5E
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/service_plans


Body
^^^^

::

  {
    "name": "100mb",
    "free": true,
    "description": "Let's you put data in your database!",
    "service_guid": "deadbeef",
    "service_guid": "d22bf07c-f1d7-4bf7-853c-ddafebc4fa33"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans" -d '{
    "name": "100mb",
    "free": true,
    "description": "Let\u0027s you put data in your database!",
    "service_guid": "deadbeef",
    "service_guid": "d22bf07c-f1d7-4bf7-853c-ddafebc4fa33"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ0IiwiZW1haWwiOiJlbWFpbC0zOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.m_cPhaKc-BlM3iRVlguRNOJ7psPFVcCuefkUJ6GzJ5E" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/service_plans/4b25212b-e55b-4fa3-8c57-35baaed24348
  X-VCAP-Request-ID: 66d39df3-6bd0-4559-b8c4-41afa0fc9922
  Content-Length: 663
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
      "guid": "4b25212b-e55b-4fa3-8c57-35baaed24348",
      "url": "/v2/service_plans/4b25212b-e55b-4fa3-8c57-35baaed24348",
      "created_at": "2014-06-19T17:18:53-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "100mb",
      "free": true,
      "description": "Let's you put data in your database!",
      "service_guid": "d22bf07c-f1d7-4bf7-853c-ddafebc4fa33",
      "extra": null,
      "unique_id": "60dccd7c-bf50-4f61-8adb-9fd33507b86c",
      "public": true,
      "service_url": "/v2/services/d22bf07c-f1d7-4bf7-853c-ddafebc4fa33",
      "service_instances_url": "/v2/service_plans/4b25212b-e55b-4fa3-8c57-35baaed24348/service_instances"
    }
  }

