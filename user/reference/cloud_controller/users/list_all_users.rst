
List all Users
--------------


GET /v2/users
~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| Name                              | Description                                                     | Default | Valid Values | Example Values |
|                                   |                                                                 |         |              |                |
+===================================+=================================================================+=========+==============+================+
| guid                              | The guid of the user.                                           |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| default_space_guid                | The guid of the default space for apps created by this user.    |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| admin                             | Whether the user is an admin (Use UAA instead).                 |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| default_space_url                 | The url of the default space for apps created by the user.      |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| spaces_url                        | The url of the spaces this user is a member of.                 |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| organizations_url                 | The url of the organizations this user in a member of.          |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| managed_organizations_url         | The url of the organizations this user in a manager of.         |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| billing_managed_organizations_url | The url of the organizations this user in a billing manager of. |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| audited_organizations_url         | The url of the organizations this user in a auditor of.         |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| managed_spaces_url                | The url of the spaces this user in a manager of.                |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| audited_spaces_url                | The url of the spaces this user in a auditor of.                |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                   | Description                                                                                                                                                                                                                              |
|                        |                                                                                                                                                                                                                                          |
+========================+==========================================================================================================================================================================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: space_guid, organization_guid, managed_organization_guid, billing_managed_organization_guid, audited_organization_guid, managed_space_guid, audited_space_guid, username, admin |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                                                                                                                                                                                 |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                                                                                                                                                                                      |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                                                                                                                                                                               |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.                                                                                                                                                            |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                                                                                                                                                                               |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                                                                                                                                                                                        |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                                                                                                                                                                          |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                                                                                                                                                                          |
|                        |                                                                                                                                                                                                                                          |
+------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC01N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU5fQ.Bt5EVhJWMpqaQkCEfZDeIb9jkIRaxEOno1OqCUfVbE8
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/users


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/users" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC01N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU5fQ.Bt5EVhJWMpqaQkCEfZDeIb9jkIRaxEOno1OqCUfVbE8" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: d1d71f10-fa3a-4d10-bd5d-05aa9ce25c9b
  Content-Length: 3600
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 4,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "uaa-id-63",
          "url": "/v2/users/uaa-id-63",
          "created_at": "2014-04-07T11:19:19-07:00",
          "updated_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-63",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-63/spaces",
          "organizations_url": "/v2/users/uaa-id-63/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-63/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-63/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-63/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-63/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-63/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-64",
          "url": "/v2/users/uaa-id-64",
          "created_at": "2014-04-07T11:19:19-07:00",
          "updated_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-64",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-64/spaces",
          "organizations_url": "/v2/users/uaa-id-64/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-64/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-64/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-64/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-64/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-64/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-65",
          "url": "/v2/users/uaa-id-65",
          "created_at": "2014-04-07T11:19:19-07:00",
          "updated_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-65",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-65/spaces",
          "organizations_url": "/v2/users/uaa-id-65/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-65/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-65/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-65/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-65/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-65/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-66",
          "url": "/v2/users/uaa-id-66",
          "created_at": "2014-04-07T11:19:19-07:00",
          "updated_at": null
        },
        "entity": {
          "admin": true,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-66",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-66/spaces",
          "organizations_url": "/v2/users/uaa-id-66/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-66/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-66/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-66/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-66/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-66/audited_spaces"
        }
      }
    ]
  }

