
List all Domains
----------------


GET /v2/domains
~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| Name                     | Description                                                                    | Default | Valid Values | Example Values    |
|                          |                                                                                |         |              |                   |
+==========================+================================================================================+=========+==============+===================+
| guid                     | The guid of the domain.                                                        |         |              |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| name                     | The name of the domain.                                                        |         |              | - example.com     |
|                          |                                                                                |         |              | - foo.example.com |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| wildcard                 | Allow routes with non-empty hosts                                              |         | - true       |                   |
|                          |                                                                                |         | - false      |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| owning_organization_guid | The organization that owns the domain. If not specified, the domain is shared. |         |              |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-----------------------------------------------------------------------------------------------------+
| Name                   | Description                                                                                         |
|                        |                                                                                                     |
+========================+=====================================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: name, owning_organization_guid, space_guid |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                                            |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                                                 |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                                          |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.                       |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                                          |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                                                   |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                                     |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                                     |
|                        |                                                                                                     |
+------------------------+-----------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUiLCJlbWFpbCI6ImVtYWlsLTVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.72bVnvlucZKyUllpxlKKaMlAznT3YrWAq9tIzimkqVg
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/domains


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUiLCJlbWFpbCI6ImVtYWlsLTVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.72bVnvlucZKyUllpxlKKaMlAznT3YrWAq9tIzimkqVg" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: fa686d6b-568e-430b-8d28-5daa257b278a
  X-Cf-Warning: Endpoint deprecated
  Content-Length: 1809
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
          "guid": "1bee4557-9485-43a8-be79-b28d7f8f849a",
          "url": "/v2/domains/1bee4557-9485-43a8-be79-b28d7f8f849a",
          "created_at": "2014-04-07T11:18:53-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-13.com",
          "owning_organization_guid": "3c2a7a22-c9a2-45db-961e-c293e93a6011",
          "owning_organization_url": "/v2/organizations/3c2a7a22-c9a2-45db-961e-c293e93a6011",
          "spaces_url": "/v2/domains/1bee4557-9485-43a8-be79-b28d7f8f849a/spaces"
        }
      },
      {
        "metadata": {
          "guid": "05659483-c240-41fc-9f37-a88c7b5eebb5",
          "url": "/v2/domains/05659483-c240-41fc-9f37-a88c7b5eebb5",
          "created_at": "2014-04-07T11:18:53-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-14.com"
        }
      },
      {
        "metadata": {
          "guid": "2533b4c9-b7ee-4590-9494-fa36adf500f4",
          "url": "/v2/domains/2533b4c9-b7ee-4590-9494-fa36adf500f4",
          "created_at": "2014-04-07T11:18:53-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-15.com",
          "owning_organization_guid": "5ef6e994-9a48-493d-b547-9e0ba5c5c2e0",
          "owning_organization_url": "/v2/organizations/5ef6e994-9a48-493d-b547-9e0ba5c5c2e0",
          "spaces_url": "/v2/domains/2533b4c9-b7ee-4590-9494-fa36adf500f4/spaces"
        }
      },
      {
        "metadata": {
          "guid": "30e390c8-6a2f-41e3-b877-93b79300edbf",
          "url": "/v2/domains/30e390c8-6a2f-41e3-b877-93b79300edbf",
          "created_at": "2014-04-07T11:18:53-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-16.com"
        }
      }
    ]
  }

