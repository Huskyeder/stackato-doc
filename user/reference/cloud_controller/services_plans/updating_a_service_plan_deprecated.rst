
Updating a service plan (deprecated)
------------------------------------


PUT /v2/service_plans
~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ1IiwiZW1haWwiOiJlbWFpbC0zOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.8vC2EPLoGY_MgJ07-SRtElY1BQ81oT4WtPQpPhdaKh0
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/service_plans/fdfc338d-19bd-4efc-9a49-67bb04d5e5e4


Body
^^^^

::

  {
    "name": "100mb",
    "free": true,
    "description": "Let's you put data in your database!",
    "service_guid": "deadbeef"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans/fdfc338d-19bd-4efc-9a49-67bb04d5e5e4" -d '{
    "name": "100mb",
    "free": true,
    "description": "Let\u0027s you put data in your database!",
    "service_guid": "deadbeef"
  }' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ1IiwiZW1haWwiOiJlbWFpbC0zOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.8vC2EPLoGY_MgJ07-SRtElY1BQ81oT4WtPQpPhdaKh0" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 616c9fb5-e3f1-42c7-a166-22aa4d1fc122
  Content-Length: 686
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
      "guid": "fdfc338d-19bd-4efc-9a49-67bb04d5e5e4",
      "url": "/v2/service_plans/fdfc338d-19bd-4efc-9a49-67bb04d5e5e4",
      "created_at": "2014-06-19T17:18:53-07:00",
      "updated_at": "2014-06-19T17:18:53-07:00"
    },
    "entity": {
      "name": "100mb",
      "free": true,
      "description": "Let's you put data in your database!",
      "service_guid": "429ad9a0-1b7c-4279-a985-fb5de1cd4db4",
      "extra": null,
      "unique_id": "e081335d-fc31-469e-bf6b-eb9afc0972dc",
      "public": true,
      "service_url": "/v2/services/429ad9a0-1b7c-4279-a985-fb5de1cd4db4",
      "service_instances_url": "/v2/service_plans/fdfc338d-19bd-4efc-9a49-67bb04d5e5e4/service_instances"
    }
  }

