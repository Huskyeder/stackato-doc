
List app usage events
---------------------


GET /v2/app_usage_events
~~~~~~~~~~~~~~~~~~~~~~~~

Events are sorted by internal database IDs. This order may differ from created_at. Events close to the current time should not be processed because other events may still have open transactions that will change their order in the results.

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| Name                      | Description                                                                                                    | Default | Valid Values    | Example Values                      |
|                           |                                                                                                                |         |                 |                                     |
+===========================+================================================================================================================+=========+=================+=====================================+
| guid                      | The guid of the event.                                                                                         |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| state                     | The desired state of the app or 'BUILDPACK_SET' when buildpack info has been set.                              |         | - STARTED       |                                     |
|                           |                                                                                                                |         | - STOPPED       |                                     |
|                           |                                                                                                                |         | - BUILDPACK_SET |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| instance_count            | How many instance of the app.                                                                                  |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| memory_in_mb_per_instance | How much memory per app instance.                                                                              |         |                 | - 128                               |
|                           |                                                                                                                |         |                 | - 256                               |
|                           |                                                                                                                |         |                 | - 512                               |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| app_guid                  | The GUID of the app.                                                                                           |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| app_name                  | The name of the app.                                                                                           |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| org_guid                  | The GUID of the organization.                                                                                  |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| space_guid                | The GUID of the space.                                                                                         |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| space_name                | The name of the space.                                                                                         |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| buildpack_guid            | The GUID of the buildpack used to stage the app.                                                               |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| buildpack_name            | The name of the buildpack or the URL of the custom buildpack used to stage the app.                            |         |                 | - https://example.com/buildpack.git |
|                           |                                                                                                                |         |                 | - admin_buildpack                   |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+
| created_at                | The timestamp when the event is recorded. It is possible that later events may have earlier created_at values. |         |                 |                                     |
|                           |                                                                                                                |         |                 |                                     |
+---------------------------+----------------------------------------------------------------------------------------------------------------+---------+-----------------+-------------------------------------+


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwOCIsImVtYWlsIjoiZW1haWwtOTBAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.i3NvI2jYA4O-o-ESAPLXu-Lc-WuScq4EGRVsbKWMk9Q
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/app_usage_events?results-per-page=1&after_guid=5735b6a6-faf1-4a02-84f5-ae21ded1671c


Query Parameters
^^^^^^^^^^^^^^^^

::

  results-per-page: 1
  after_guid: 5735b6a6-faf1-4a02-84f5-ae21ded1671c


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/app_usage_events?results-per-page=1&after_guid=5735b6a6-faf1-4a02-84f5-ae21ded1671c" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwOCIsImVtYWlsIjoiZW1haWwtOTBAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.i3NvI2jYA4O-o-ESAPLXu-Lc-WuScq4EGRVsbKWMk9Q" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: a88f0952-7674-4da5-88d7-a49557521d70
  Content-Length: 937
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
    "next_url": "/v2/app_usage_events?after_guid=5735b6a6-faf1-4a02-84f5-ae21ded1671c&order-direction=asc&page=2&results-per-page=1",
    "resources": [
      {
        "metadata": {
          "guid": "852f4ec8-a63d-4ddb-b183-ffd502bcd75a",
          "url": "/v2/app_usage_events/852f4ec8-a63d-4ddb-b183-ffd502bcd75a",
          "created_at": "2014-06-19T17:19:06-07:00"
        },
        "entity": {
          "state": "STARTED",
          "memory_in_mb_per_instance": 564,
          "instance_count": 1,
          "app_guid": "guid-74aba979-6337-472f-9841-a43f1d7f53d4",
          "app_name": "name-637",
          "space_guid": "guid-3db7f274-c0bc-4fb2-a8ac-2a231cbb87af",
          "space_name": "name-638",
          "org_guid": "guid-a2b9d24b-0517-420c-8c72-37b9228ce667",
          "buildpack_guid": "guid-6f8d3c5e-6f7c-4c89-8757-7bf65136ac79",
          "buildpack_name": "name-639"
        }
      }
    ]
  }

