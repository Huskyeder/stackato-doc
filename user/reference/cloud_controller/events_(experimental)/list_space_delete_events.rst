
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU3IiwiZW1haWwiOiJlbWFpbC01M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU1fQ.XenOIpWxL6HNPgeGGQ2nkSH22SIMzjCuGPxp6X_p-Lc
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU3IiwiZW1haWwiOiJlbWFpbC01M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU1fQ.XenOIpWxL6HNPgeGGQ2nkSH22SIMzjCuGPxp6X_p-Lc" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 441e4957-d4ca-4ef7-b6b5-2a4c0061f779
  Content-Length: 845
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
          "guid": "cf452dae-4adf-41af-96d9-ce7ef72917f8",
          "url": "/v2/events/cf452dae-4adf-41af-96d9-ce7ef72917f8",
          "created_at": "2014-04-07T11:19:15-07:00",
          "updated_at": null
        },
        "entity": {
          "type": "audit.space.delete-request",
          "actor": "uaa-id-56",
          "actor_type": "user",
          "actee": "15b436fa-4aa3-4661-b001-469f0116ac17",
          "actee_type": "space",
          "timestamp": "2014-04-07T11:19:15-07:00",
          "metadata": {
            "request": {
              "recursive": true
            }
          },
          "space_guid": "15b436fa-4aa3-4661-b001-469f0116ac17",
          "organization_guid": "ecbdec5c-6432-4e1b-91ea-d3d401af506d"
        }
      }
    ]
  }

