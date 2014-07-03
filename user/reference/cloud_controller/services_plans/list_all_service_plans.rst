
List all Service Plans
----------------------


GET /v2/service_plans
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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+----------------------------------------------------------------------------------------------+
| Name                   | Description                                                                                  |
|                        |                                                                                              |
+========================+==============================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: service_guid, service_instance_guid |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                                     |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                                          |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                                   |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.                |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                                   |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                                            |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                              |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                              |
|                        |                                                                                              |
+------------------------+----------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQyIiwiZW1haWwiOiJlbWFpbC0zNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.IpwFJAh9SmTS1sGlSKJofcg8IBf3kJMHM22-C6sURKs
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_plans


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQyIiwiZW1haWwiOiJlbWFpbC0zNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.IpwFJAh9SmTS1sGlSKJofcg8IBf3kJMHM22-C6sURKs" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 5b38ca36-00b9-49e2-bf84-33bf29020837
  Content-Length: 821
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
          "guid": "bb14c437-f24c-4b7f-94c4-daff67988369",
          "url": "/v2/service_plans/bb14c437-f24c-4b7f-94c4-daff67988369",
          "created_at": "2014-06-19T17:18:53-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-347",
          "free": false,
          "description": "desc-13",
          "service_guid": "97987790-01d0-4326-9670-1a84a66bfe23",
          "extra": null,
          "unique_id": "f9ceaefa-6813-4257-8940-3cfea6f32d27",
          "public": true,
          "service_url": "/v2/services/97987790-01d0-4326-9670-1a84a66bfe23",
          "service_instances_url": "/v2/service_plans/bb14c437-f24c-4b7f-94c4-daff67988369/service_instances"
        }
      }
    ]
  }

