
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
| organization_guid | The guid of the associated organization |         |              | - guid-90a03e48-ed1f-485d-bf50-4372c9eb3984 |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIxIiwiZW1haWwiOiJlbWFpbC0xNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.UW7sInj1O7QL7TZZvlO2PomM52uVkZloznhrI9K9wvE
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIxIiwiZW1haWwiOiJlbWFpbC0xNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.UW7sInj1O7QL7TZZvlO2PomM52uVkZloznhrI9K9wvE" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: c0b67ad5-ecc1-4d2f-9f17-062cab99198f
  Content-Length: 3834
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
          "guid": "28542cc1-d25a-4d4d-8192-0189ad4ff1c0",
          "url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0",
          "created_at": "2014-06-19T17:18:48-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-295",
          "organization_guid": "8c745500-0f4c-4393-b8b2-5b5edc9d61ed",
          "is_default": false,
          "organization_url": "/v2/organizations/8c745500-0f4c-4393-b8b2-5b5edc9d61ed",
          "developers_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/developers",
          "managers_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/managers",
          "auditors_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/auditors",
          "apps_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/apps",
          "routes_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/routes",
          "domains_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/domains",
          "service_instances_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/service_instances",
          "app_events_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/app_events",
          "events_url": "/v2/spaces/28542cc1-d25a-4d4d-8192-0189ad4ff1c0/events"
        }
      },
      {
        "metadata": {
          "guid": "bd09d88f-8e85-4a4b-84c5-37849f1a0421",
          "url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421",
          "created_at": "2014-06-19T17:18:48-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-298",
          "organization_guid": "20f84b3c-b589-48e0-859e-5d66691b577c",
          "is_default": false,
          "organization_url": "/v2/organizations/20f84b3c-b589-48e0-859e-5d66691b577c",
          "developers_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/developers",
          "managers_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/managers",
          "auditors_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/auditors",
          "apps_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/apps",
          "routes_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/routes",
          "domains_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/domains",
          "service_instances_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/service_instances",
          "app_events_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/app_events",
          "events_url": "/v2/spaces/bd09d88f-8e85-4a4b-84c5-37849f1a0421/events"
        }
      },
      {
        "metadata": {
          "guid": "b87f8ad0-ca29-4921-a66b-2f96cf07ce29",
          "url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29",
          "created_at": "2014-06-19T17:18:48-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name-301",
          "organization_guid": "841eccac-9224-435f-aa3f-fdf4d4dfb39b",
          "is_default": false,
          "organization_url": "/v2/organizations/841eccac-9224-435f-aa3f-fdf4d4dfb39b",
          "developers_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/developers",
          "managers_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/managers",
          "auditors_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/auditors",
          "apps_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/apps",
          "routes_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/routes",
          "domains_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/domains",
          "service_instances_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/service_instances",
          "app_events_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/app_events",
          "events_url": "/v2/spaces/b87f8ad0-ca29-4921-a66b-2f96cf07ce29/events"
        }
      }
    ]
  }

