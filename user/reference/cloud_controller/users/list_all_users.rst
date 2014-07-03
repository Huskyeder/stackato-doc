
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTgzIiwiZW1haWwiOiJlbWFpbC03MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.QYXkPQrPR2kVhBP1lGx3Ts3vwa1GvoKKX_34CSF46zo
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTgzIiwiZW1haWwiOiJlbWFpbC03MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.QYXkPQrPR2kVhBP1lGx3Ts3vwa1GvoKKX_34CSF46zo" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: e6756134-a7ee-4aec-bfce-ad5fc0fda115
  Content-Length: 3720
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
          "guid": "uaa-id-80",
          "url": "/v2/users/uaa-id-80",
          "created_at": "2014-06-19T17:19:01-07:00",
          "updated_at": null,
          "logged_in_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-80",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-80/spaces",
          "organizations_url": "/v2/users/uaa-id-80/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-80/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-80/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-80/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-80/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-80/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-81",
          "url": "/v2/users/uaa-id-81",
          "created_at": "2014-06-19T17:19:01-07:00",
          "updated_at": null,
          "logged_in_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-81",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-81/spaces",
          "organizations_url": "/v2/users/uaa-id-81/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-81/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-81/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-81/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-81/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-81/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-82",
          "url": "/v2/users/uaa-id-82",
          "created_at": "2014-06-19T17:19:01-07:00",
          "updated_at": null,
          "logged_in_at": null
        },
        "entity": {
          "admin": false,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-82",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-82/spaces",
          "organizations_url": "/v2/users/uaa-id-82/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-82/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-82/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-82/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-82/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-82/audited_spaces"
        }
      },
      {
        "metadata": {
          "guid": "uaa-id-83",
          "url": "/v2/users/uaa-id-83",
          "created_at": "2014-06-19T17:19:01-07:00",
          "updated_at": null,
          "logged_in_at": null
        },
        "entity": {
          "admin": true,
          "active": false,
          "default_space_guid": null,
          "guid": "uaa-id-83",
          "username": "testuser",
          "spaces_url": "/v2/users/uaa-id-83/spaces",
          "organizations_url": "/v2/users/uaa-id-83/organizations",
          "managed_organizations_url": "/v2/users/uaa-id-83/managed_organizations",
          "billing_managed_organizations_url": "/v2/users/uaa-id-83/billing_managed_organizations",
          "audited_organizations_url": "/v2/users/uaa-id-83/audited_organizations",
          "managed_spaces_url": "/v2/users/uaa-id-83/managed_spaces",
          "audited_spaces_url": "/v2/users/uaa-id-83/audited_spaces"
        }
      }
    ]
  }

