
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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYyIiwiZW1haWwiOiJlbWFpbC01NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU1fQ.IR5b0sFQfA8_RzPNVbeeMjIHqTlhoThJjTtwpd99w2c
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/events/1f9e8204-500e-4fd4-95b2-6bbf476a2cb2


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/events/1f9e8204-500e-4fd4-95b2-6bbf476a2cb2" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYyIiwiZW1haWwiOiJlbWFpbC01NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU1fQ.IR5b0sFQfA8_RzPNVbeeMjIHqTlhoThJjTtwpd99w2c" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 6c26cf9e-4afd-4de6-9d8b-3e3f8a3eb9af
  Content-Length: 548
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
      "guid": "1f9e8204-500e-4fd4-95b2-6bbf476a2cb2",
      "url": "/v2/events/1f9e8204-500e-4fd4-95b2-6bbf476a2cb2",
      "created_at": "2014-04-07T11:19:15-07:00",
      "updated_at": null
    },
    "entity": {
      "type": "name-318",
      "actor": "guid-d1b4e474-3726-4650-966f-bed094f7db8f",
      "actor_type": "name-319",
      "actee": "guid-d8fc7e24-f264-41bc-9c02-5238554df3dd",
      "actee_type": "name-320",
      "timestamp": "2014-04-07T11:19:15-07:00",
      "metadata": {
  
      },
      "space_guid": "",
      "organization_guid": ""
    }
  }

