
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
| actor_name        | The name of the actor.                   |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actee             | The GUID of the actee.                   |         |                              |                    |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actee_type        | The actee type.                          |         |                              | - space            |
|                   |                                          |         |                              | - app              |
|                   |                                          |         |                              |                    |
+-------------------+------------------------------------------+---------+------------------------------+--------------------+
| actee_name        | The name of the actee.                   |         |                              |                    |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE0IiwiZW1haWwiOiJlbWFpbC04QHNvbWVkb21haW4uY29tIiwic2NvcGUiOlsiY2xvdWRfY29udHJvbGxlci5hZG1pbiJdLCJhdWQiOlsiY2xvdWRfY29udHJvbGxlciJdLCJleHAiOjE0MDM4MjgzMjd9.D9bap-8s1r4esJdZbHHad-_uo4L1sAcRzERKGf5aIIo
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE0IiwiZW1haWwiOiJlbWFpbC04QHNvbWVkb21haW4uY29tIiwic2NvcGUiOlsiY2xvdWRfY29udHJvbGxlci5hZG1pbiJdLCJhdWQiOlsiY2xvdWRfY29udHJvbGxlciJdLCJleHAiOjE0MDM4MjgzMjd9.D9bap-8s1r4esJdZbHHad-_uo4L1sAcRzERKGf5aIIo" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: cd30c587-dec2-4e62-ab50-e96d8cc654f0
  Content-Length: 2415
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
          "guid": "d9df3e10-a8c9-4484-bf67-10f0d9914dfb",
          "url": "/v2/events/d9df3e10-a8c9-4484-bf67-10f0d9914dfb",
          "created_at": "2014-06-19T17:18:46-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-198",
          "actor": "guid-9dc396ab-a543-4397-8d9b-9e60486f5685",
          "actor_type": "name-199",
          "actor_name": "name-200",
          "actee": "guid-87bbd540-a81d-47c8-98c2-46b88aeaf4ba",
          "actee_type": "name-201",
          "actee_name": "name-202",
          "timestamp": "2014-06-19T17:18:46-07:00",
          "metadata": {
  
          },
          "space_guid": "bc110b6c-26f8-495b-b0e1-c678582ae9ef",
          "organization_guid": "048b147e-7be9-45b3-883c-0026fa7b4234"
        }
      },
      {
        "metadata": {
          "guid": "37d80fde-5ff6-4d86-b35c-519aa8879095",
          "url": "/v2/events/37d80fde-5ff6-4d86-b35c-519aa8879095",
          "created_at": "2014-06-19T17:18:46-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-206",
          "actor": "guid-4f433a20-23de-442d-9978-7db3be0f62b9",
          "actor_type": "name-207",
          "actor_name": "name-208",
          "actee": "guid-440c4bde-4b5a-48df-8e55-326fd341c2c9",
          "actee_type": "name-209",
          "actee_name": "name-210",
          "timestamp": "2014-06-19T17:18:46-07:00",
          "metadata": {
  
          },
          "space_guid": "810e8e3e-520d-438b-97d0-f1213f3ee5a6",
          "organization_guid": "f73fe462-7d10-4b27-a22f-07140a602029"
        }
      },
      {
        "metadata": {
          "guid": "4a5b8ec4-a0c3-492b-b3b2-5c47c059268b",
          "url": "/v2/events/4a5b8ec4-a0c3-492b-b3b2-5c47c059268b",
          "created_at": "2014-06-19T17:18:47-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "name-214",
          "actor": "guid-08f219bb-9b3c-4677-bf58-b0314297b886",
          "actor_type": "name-215",
          "actor_name": "name-216",
          "actee": "guid-2604a9e3-a40e-4c17-a677-7812a67ee6bb",
          "actee_type": "name-217",
          "actee_name": "name-218",
          "timestamp": "2014-06-19T17:18:46-07:00",
          "metadata": {
  
          },
          "space_guid": "bebbeec1-88bc-414b-9079-8508d9f83172",
          "organization_guid": "39830f21-a862-4928-a844-e05409011ee9"
        }
      }
    ]
  }

