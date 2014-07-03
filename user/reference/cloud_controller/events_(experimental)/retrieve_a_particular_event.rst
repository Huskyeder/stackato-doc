
Retrieve a Particular Event
---------------------------


GET /v2/events/:guid
~~~~~~~~~~~~~~~~~~~~


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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE1IiwiZW1haWwiOiJlbWFpbC05QHNvbWVkb21haW4uY29tIiwic2NvcGUiOlsiY2xvdWRfY29udHJvbGxlci5hZG1pbiJdLCJhdWQiOlsiY2xvdWRfY29udHJvbGxlciJdLCJleHAiOjE0MDM4MjgzMjd9.XKhmE55ct4cwBysJoT2Gq-xOUc5aQhF9CVd7jTV7_ts
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events/aa5c1a2e-5178-4486-b6a8-e96b3f5c8a2c


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events/aa5c1a2e-5178-4486-b6a8-e96b3f5c8a2c" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE1IiwiZW1haWwiOiJlbWFpbC05QHNvbWVkb21haW4uY29tIiwic2NvcGUiOlsiY2xvdWRfY29udHJvbGxlci5hZG1pbiJdLCJhdWQiOlsiY2xvdWRfY29udHJvbGxlciJdLCJleHAiOjE0MDM4MjgzMjd9.XKhmE55ct4cwBysJoT2Gq-xOUc5aQhF9CVd7jTV7_ts" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 81295998-3dfc-4421-8092-e86a116afcb2
  Content-Length: 680
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
      "guid": "aa5c1a2e-5178-4486-b6a8-e96b3f5c8a2c",
      "url": "/v2/events/aa5c1a2e-5178-4486-b6a8-e96b3f5c8a2c",
      "created_at": "2014-06-19T17:18:47-07:00",
      "updated_at": null
    },
    "entity": {
      "type": "name-222",
      "actor": "guid-b2cd5520-8d7c-406d-bffc-1f9b95554be8",
      "actor_type": "name-223",
      "actor_name": "name-224",
      "actee": "guid-78a63528-cd92-46e8-93b7-e4ac29adf38c",
      "actee_type": "name-225",
      "actee_name": "name-226",
      "timestamp": "2014-06-19T17:18:47-07:00",
      "metadata": {
  
      },
      "space_guid": "f713ede2-90cf-4be2-a525-2b352c41278a",
      "organization_guid": "97878ed5-9704-4d59-bc01-bf6744981d0a"
    }
  }

