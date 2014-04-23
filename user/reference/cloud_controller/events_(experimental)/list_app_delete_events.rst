
List app delete events
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUyIiwiZW1haWwiOiJlbWFpbC01MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU0fQ.VF61f0b98B--Xm-mQctrKj08yq6awool9Fl2iD_fnuk
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events?q=type:audit.app.delete-request


Query Parameters
^^^^^^^^^^^^^^^^

::

  q: type:audit.app.delete-request


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events?q=type:audit.app.delete-request" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUyIiwiZW1haWwiOiJlbWFpbC01MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU0fQ.VF61f0b98B--Xm-mQctrKj08yq6awool9Fl2iD_fnuk" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: f14df175-afe2-4490-8eea-4ed0057063fc
  Content-Length: 914
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
          "guid": "f9033698-c584-4207-a33f-33fc0e6f815d",
          "url": "/v2/events/f9033698-c584-4207-a33f-33fc0e6f815d",
          "created_at": "2014-04-07T11:19:14-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "audit.app.delete-request",
          "actor": "uaa-id-51",
          "actor_type": "user",
          "actee": "7940f04d-151b-49ed-bd06-4bbf9ad5bd65",
          "actee_type": "app",
          "timestamp": "2014-04-07T11:19:14-07:00",
          "metadata": {
            "request": {
              "recursive": false
            }
          },
          "space_guid": "b90979a3-d1f9-48f5-bd92-8739e2a2afd2",
          "organization_guid": "2eb2814e-fbdf-4aa6-8dae-1d970c793979",
          "space_url": "/v2/spaces/b90979a3-d1f9-48f5-bd92-8739e2a2afd2"
        }
      }
    ]
  }

