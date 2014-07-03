
List app update events
----------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIiLCJlbWFpbCI6ImVtYWlsLTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODMyNn0.WEHcwG6McftEW0IMaOpMnXaJh8wfsDP-4SgmXDANTwM
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events?q=type:audit.app.update


Query Parameters
^^^^^^^^^^^^^^^^

::

  q: type:audit.app.update


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events?q=type:audit.app.update" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIiLCJlbWFpbCI6ImVtYWlsLTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODMyNn0.WEHcwG6McftEW0IMaOpMnXaJh8wfsDP-4SgmXDANTwM" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: eb3b20a0-9d56-4ff1-bb15-0191f1da85bf
  Content-Length: 1042
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
          "guid": "c43d7d31-a668-489d-adae-43a75dbce8af",
          "url": "/v2/events/c43d7d31-a668-489d-adae-43a75dbce8af",
          "created_at": "2014-06-19T17:18:45-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "audit.app.update",
          "actor": "uaa-id-1",
          "actor_type": "user",
          "actor_name": "user@email.com",
          "actee": "c96858ba-bfbc-4063-998c-f84e2a4d7b12",
          "actee_type": "app",
          "actee_name": "name-25",
          "timestamp": "2014-06-19T17:18:45-07:00",
          "metadata": {
            "request": {
              "name": "new",
              "instances": 1,
              "memory": 84,
              "state": "STOPPED",
              "environment_json": "PRIVATE DATA HIDDEN"
            }
          },
          "space_guid": "7bc0e53c-a6dc-4bf9-8c28-a8eadc7b20bf",
          "organization_guid": "6feea139-eb1a-4131-8e21-526b3cbc0cee"
        }
      }
    ]
  }

