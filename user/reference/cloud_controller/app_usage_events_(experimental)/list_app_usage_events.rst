
List app usage events
---------------------


GET /v2/app_usage_events
~~~~~~~~~~~~~~~~~~~~~~~~

Events are sorted by internal database IDs. This order may differ from created_at. Events close to the current time should not be processed because other events may still have open transactions that will change their order in the results.

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| Name                      | Description                                                                                                    | Default | Valid Values | Example Values |
|                           |                                                                                                                |         |              |                |
+===========================+================================================================================================================+=========+==============+================+
| guid                      | The guid of the event.                                                                                         |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| state                     | The state of the app.                                                                                          |         | - STARTED    |                |
|                           |                                                                                                                |         | - STOPPED    |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| instance_count            | How many instance of the app.                                                                                  |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| memory_in_mb_per_instance | How much memory per app instance.                                                                              |         |              | - 128          |
|                           |                                                                                                                |         |              | - 256          |
|                           |                                                                                                                |         |              | - 512          |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| app_guid                  | The GUID of the app.                                                                                           |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| app_name                  | The name of the app.                                                                                           |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| org_guid                  | The GUID of the organization.                                                                                  |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| space_guid                | The GUID of the space.                                                                                         |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| space_name                | The name of the space.                                                                                         |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+
| created_at                | The timestamp when the event is recorded. It is possible that later events may have earlier created_at values. |         |              |                |
|                           |                                                                                                                |         |              |                |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+--------------+----------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------+
| Name                   | Description                                                                   |
|                        |                                                                               |
+========================+===============================================================================+
| page                   | Page of results to fetch                                                      |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                           |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                    |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N. |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                    |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                             |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.               |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                               |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| after_guid             | Restrict results to App Usage Events after the one with the given guid        |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI2IiwiZW1haWwiOiJlbWFpbC0yNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQxfQ.JsUwYm5mRRKiNgEz3jgPj1S-YK4QneCgHMPuA0FBP6E
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/app_usage_events?results-per-page=1&after_guid=a5ea45df-5901-4dc1-8438-9758ce54d0d7


Query Parameters
^^^^^^^^^^^^^^^^

::

  results-per-page: 1
  after_guid: a5ea45df-5901-4dc1-8438-9758ce54d0d7


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/app_usage_events?results-per-page=1&after_guid=a5ea45df-5901-4dc1-8438-9758ce54d0d7" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI2IiwiZW1haWwiOiJlbWFpbC0yNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQxfQ.JsUwYm5mRRKiNgEz3jgPj1S-YK4QneCgHMPuA0FBP6E" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 516c2472-dfce-4fda-9a55-2d7ac36e9b20
  Content-Length: 806
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 2,
    "total_pages": 2,
    "prev_url": null,
    "next_url": "/v2/app_usage_events?after_guid=a5ea45df-5901-4dc1-8438-9758ce54d0d7&page=2&results-per-page=1",
    "resources": [
      {
        "metadata": {
          "guid": "86306eef-e32f-4096-bcb8-25b85c0c7bc0",
          "url": "/v2/app_usage_events/86306eef-e32f-4096-bcb8-25b85c0c7bc0",
          "created_at": "2014-04-07T11:19:01-07:00"
        },
        "entity": {
          "state": "STARTED",
          "memory_in_mb_per_instance": 564,
          "instance_count": 1,
          "app_guid": "guid-0f196d69-e148-4a32-b2d2-ed72a16ef4c1",
          "app_name": "name-40",
          "space_guid": "guid-68051df8-3aa9-460f-a65a-a5b745831dc5",
          "space_name": "name-41",
          "org_guid": "guid-6d611819-2a2d-454f-9210-4594102229e5"
        }
      }
    ]
  }

