
Retrieve a Particular Service_plans
-----------------------------------


GET /v2/service_plans/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQxIiwiZW1haWwiOiJlbWFpbC0zNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.VQZXicxnDgEaxSbco52PR7eE_EyMcqFxR6YRbW25c8w
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_plans/a37d38ac-80fd-4486-bba1-d2a03799ed8d


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans/a37d38ac-80fd-4486-bba1-d2a03799ed8d" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQxIiwiZW1haWwiOiJlbWFpbC0zNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.VQZXicxnDgEaxSbco52PR7eE_EyMcqFxR6YRbW25c8w" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: f3978a2d-7c16-47f5-b133-982d42665b78
  Content-Length: 638
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
      "guid": "a37d38ac-80fd-4486-bba1-d2a03799ed8d",
      "url": "/v2/service_plans/a37d38ac-80fd-4486-bba1-d2a03799ed8d",
      "created_at": "2014-06-19T17:18:53-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name-346",
      "free": false,
      "description": "desc-11",
      "service_guid": "fe33912c-7c47-4669-b513-cab6c1da19d3",
      "extra": null,
      "unique_id": "04d2b984-ed6b-432a-8f55-71f23da3935c",
      "public": true,
      "service_url": "/v2/services/fe33912c-7c47-4669-b513-cab6c1da19d3",
      "service_instances_url": "/v2/service_plans/a37d38ac-80fd-4486-bba1-d2a03799ed8d/service_instances"
    }
  }

