
List all Spaces
---------------


GET /v2/spaces
~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| Name              | Description                             | Default | Valid Values | Example Values                              |
|                   |                                         |         |              |                                             |
+===================+=========================================+=========+==============+=============================================+
| guid              | The guid of the space.                  |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| name              | The name of the space                   |         |              | - development                               |
|                   |                                         |         |              | - demo                                      |
|                   |                                         |         |              | - production                                |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| organization_guid | The guid of the associated organization |         |              | - guid-e6a9f1c9-e2dd-43b7-888b-dd04ad8fd826 |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| developer_guids   | The list of the associated developers   |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| manager_guids     | The list of the associated managers     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| auditor_guids     | The list of the associated auditors     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| domain_guids      | The list of the associated domains      |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+------------------------------------------------------------------------------------------------------------+
| Name                   | Description                                                                                                |
|                        |                                                                                                            |
+========================+============================================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: name, organization_guid, developer_guid, app_guid |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                                                   |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                                                        |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                                                 |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.                              |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                                                 |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                                                          |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                                            |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                                            |
|                        |                                                                                                            |
+------------------------+------------------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQzIiwiZW1haWwiOiJlbWFpbC00M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ._tf4gk7Kp28--1AMOyNLjrc3ICo63pSVNia0th0CQAg
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/spaces


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQzIiwiZW1haWwiOiJlbWFpbC00M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ._tf4gk7Kp28--1AMOyNLjrc3ICo63pSVNia0th0CQAg" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: e515ce76-736f-415c-8aa6-08a11ed17941
  Content-Length: 3594
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
          "guid": "a30954ff-8bf8-46c9-941a-80d0e38a8a0c",
          "url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c",
          "created_at": "2014-04-07T11:19:10-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-182",
          "organization_guid": "cbab2c3e-9a8b-40c2-b666-5591d6e783d7",
          "is_default": false,
          "organization_url": "/v2/organizations/cbab2c3e-9a8b-40c2-b666-5591d6e783d7",
          "developers_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/developers",
          "managers_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/managers",
          "auditors_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/auditors",
          "apps_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/apps",
          "domains_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/domains",
          "service_instances_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/service_instances",
          "app_events_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/app_events",
          "events_url": "/v2/spaces/a30954ff-8bf8-46c9-941a-80d0e38a8a0c/events"
        }
      },
      {
        "metadata": {
          "guid": "50c7a270-6b88-442c-b198-b3dab977cc5a",
          "url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a",
          "created_at": "2014-04-07T11:19:10-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-185",
          "organization_guid": "54835336-7f9e-4140-a473-51199e751e85",
          "is_default": false,
          "organization_url": "/v2/organizations/54835336-7f9e-4140-a473-51199e751e85",
          "developers_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/developers",
          "managers_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/managers",
          "auditors_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/auditors",
          "apps_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/apps",
          "domains_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/domains",
          "service_instances_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/service_instances",
          "app_events_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/app_events",
          "events_url": "/v2/spaces/50c7a270-6b88-442c-b198-b3dab977cc5a/events"
        }
      },
      {
        "metadata": {
          "guid": "55fc84f8-f778-419e-89ad-6331a2ec54d4",
          "url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4",
          "created_at": "2014-04-07T11:19:10-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-188",
          "organization_guid": "a7376f43-820c-4362-b08b-8ef1059529e7",
          "is_default": false,
          "organization_url": "/v2/organizations/a7376f43-820c-4362-b08b-8ef1059529e7",
          "developers_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/developers",
          "managers_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/managers",
          "auditors_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/auditors",
          "apps_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/apps",
          "domains_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/domains",
          "service_instances_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/service_instances",
          "app_events_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/app_events",
          "events_url": "/v2/spaces/55fc84f8-f778-419e-89ad-6331a2ec54d4/events"
        }
      }
    ]
  }

