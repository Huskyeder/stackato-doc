
List all Events
---------------


GET /v2/events
~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| Name              | Description                              | Default | Valid Values                 | Example Values     |
|                   |                                          |         |                              |                    |
+===================+==========================================+=========+==============================+====================+
| guid              | The guid of the event.                   |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| type              | The type of the event.                   |         | - app.crash                  | - app.crash        |
|                   |                                          |         | - audit.app.update           | - audit.app.update |
|                   |                                          |         | - audit.app.create           |                    |
|                   |                                          |         | - audit.app.delete-request   |                    |
|                   |                                          |         | - audit.space.create         |                    |
|                   |                                          |         | - audit.space.update         |                    |
|                   |                                          |         | - audit.space.delete-request |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actor             | The GUID of the actor.                   |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actor_type        | The actor type.                          |         |                              | - user             |
|                   |                                          |         |                              | - app              |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actee             | The GUID of the actee.                   |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actee_type        | The actee type.                          |         |                              | - space            |
|                   |                                          |         |                              | - app              |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| timestamp         | The event creation time.                 |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| metadata          | The additional information about event.  | {}      |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| space_guid        | The guid of the associated space.        |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| organization_guid | The guid of the associated organization. |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+---------------------------------------------------------------------------------+
| Name                   | Description                                                                     |
|                        |                                                                                 |
+========================+=================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: timestamp, type, actee |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                        |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                             |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                      |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.   |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                      |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                               |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                 |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                 |
|                        |                                                                                 |
+------------------------+---------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ4IiwiZW1haWwiOiJlbWFpbC00OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU0fQ.yNQQELxr2eEIHio-J2kdqSkSIsuV2-1BEyQC-xCxgL8
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ4IiwiZW1haWwiOiJlbWFpbC00OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU0fQ.yNQQELxr2eEIHio-J2kdqSkSIsuV2-1BEyQC-xCxgL8" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 010ab885-955c-4db3-80cf-708056e2842b
  Content-Length: 1995
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 3,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "9c2cd9c0-f289-4eec-a372-5337bacf5434",
          "url": "/v2/events/9c2cd9c0-f289-4eec-a372-5337bacf5434",
          "created_at": "2014-04-07T11:19:14-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-217",
          "actor": "guid-421db62d-f50c-460b-81c8-4a1fe9fe70cd",
          "actor_type": "name-218",
          "actee": "guid-3105e602-56e7-4f4f-aa75-8a6bd44e621d",
          "actee_type": "name-219",
          "timestamp": "2014-04-07T11:19:14-07:00",
          "metadata": {
  
          },
          "space_guid": "",
          "organization_guid": ""
        }
      },
      {
        "metadata": {
          "guid": "bccc863b-3cd4-4258-b02a-851912e5f41f",
          "url": "/v2/events/bccc863b-3cd4-4258-b02a-851912e5f41f",
          "created_at": "2014-04-07T11:19:14-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-220",
          "actor": "guid-02b63433-c58a-456b-9bfd-a3ed73bec265",
          "actor_type": "name-221",
          "actee": "guid-472cefc6-6237-4442-8790-f1be69cf2198",
          "actee_type": "name-222",
          "timestamp": "2014-04-07T11:19:14-07:00",
          "metadata": {
  
          },
          "space_guid": "",
          "organization_guid": ""
        }
      },
      {
        "metadata": {
          "guid": "a1e1b58a-7b11-4e2b-b587-105d33329147",
          "url": "/v2/events/a1e1b58a-7b11-4e2b-b587-105d33329147",
          "created_at": "2014-04-07T11:19:14-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-223",
          "actor": "guid-0b2702d8-6152-4f11-ba2b-9cffb3b683f3",
          "actor_type": "name-224",
          "actee": "guid-66cc79a6-161d-43b0-8dfd-bdd4cc8c0eac",
          "actee_type": "name-225",
          "timestamp": "2014-04-07T11:19:14-07:00",
          "metadata": {
  
          },
          "space_guid": "",
          "organization_guid": ""
        }
      }
    ]
  }

