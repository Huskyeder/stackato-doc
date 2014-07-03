
List space delete events
------------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkiLCJlbWFpbCI6ImVtYWlsLTVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODMyNn0.dCea2s4yvrgNeXKL5xL4A8z0BGDzGxFC845umZKZIwM
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events?q=type:audit.space.delete-request


Query Parameters
^^^^^^^^^^^^^^^^

::

  q: type:audit.space.delete-request


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events?q=type:audit.space.delete-request" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkiLCJlbWFpbCI6ImVtYWlsLTVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODMyNn0.dCea2s4yvrgNeXKL5xL4A8z0BGDzGxFC845umZKZIwM" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 73369bfc-61c8-4b0b-bda5-1259fd07f3fe
  Content-Length: 918
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
          "guid": "5304cef7-a7e2-4da0-b4d5-661ee2e36af1",
          "url": "/v2/events/5304cef7-a7e2-4da0-b4d5-661ee2e36af1",
          "created_at": "2014-06-19T17:18:46-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "audit.space.delete-request",
          "actor": "uaa-id-8",
          "actor_type": "user",
          "actor_name": "user@email.com",
          "actee": "4bd74f89-7e19-4a73-8cbc-c0942ce3677e",
          "actee_type": "space",
          "actee_name": "name-139",
          "timestamp": "2014-06-19T17:18:46-07:00",
          "metadata": {
            "request": {
              "recursive": true
            }
          },
          "space_guid": "4bd74f89-7e19-4a73-8cbc-c0942ce3677e",
          "organization_guid": "5aee1d92-50e3-4338-8e82-8661523eee85"
        }
      }
    ]
  }

