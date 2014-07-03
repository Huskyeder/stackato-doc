
Retrieve a Particular App_usage_event
-------------------------------------


GET /v2/app_usage_events/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwOSIsImVtYWlsIjoiZW1haWwtOTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.jfeJEEZDcXNzSF5ex9trhUO5kXB4zAL02Ho1WYQ41x8
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/app_usage_events/60797fcd-3d0f-4c63-9060-8c1ee1a185a8


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/app_usage_events/60797fcd-3d0f-4c63-9060-8c1ee1a185a8" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwOSIsImVtYWlsIjoiZW1haWwtOTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.jfeJEEZDcXNzSF5ex9trhUO5kXB4zAL02Ho1WYQ41x8" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: a8f5dd4d-79f4-46f4-8445-cf7f74b85606
  Content-Length: 642
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
      "guid": "60797fcd-3d0f-4c63-9060-8c1ee1a185a8",
      "url": "/v2/app_usage_events/60797fcd-3d0f-4c63-9060-8c1ee1a185a8",
      "created_at": "2014-06-19T17:19:06-07:00"
    },
    "entity": {
      "state": "STARTED",
      "memory_in_mb_per_instance": 564,
      "instance_count": 1,
      "app_guid": "guid-dbca21fd-ce3f-4b99-81c7-b4b5e86451a4",
      "app_name": "name-643",
      "space_guid": "guid-8da3a38a-7971-4117-96cc-fa5b51c5182f",
      "space_name": "name-644",
      "org_guid": "guid-660837b5-e4e1-4564-bf06-6c72e12e1436",
      "buildpack_guid": "guid-beea1b56-a605-4a9a-8c8f-a6c130ad4bf3",
      "buildpack_name": "name-645"
    }
  }

