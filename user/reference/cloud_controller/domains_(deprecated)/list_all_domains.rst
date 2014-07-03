
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwMyIsImVtYWlsIjoiZW1haWwtODVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.UHDHG0YaBhinP9oMlhDrwewjls3bskGRVV_ngQU9ugQ
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwMyIsImVtYWlsIjoiZW1haWwtODVAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.UHDHG0YaBhinP9oMlhDrwewjls3bskGRVV_ngQU9ugQ" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: ce2aa436-f9be-4513-b47d-0c57629c10c1
  X-Cf-Warnings: Endpoint+deprecated
  Content-Length: 1841
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
          "guid": "eeacd30f-6571-4acc-8d92-6624db8f7fc9",
          "url": "/v2/domains/eeacd30f-6571-4acc-8d92-6624db8f7fc9",
          "created_at": "2014-06-19T17:19:05-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-36.example.com",
          "owning_organization_guid": "553502e5-0703-4ab4-8c25-8388e077d9e5",
          "owning_organization_url": "/v2/organizations/553502e5-0703-4ab4-8c25-8388e077d9e5",
          "spaces_url": "/v2/domains/eeacd30f-6571-4acc-8d92-6624db8f7fc9/spaces"
        }
      },
      {
        "metadata": {
          "guid": "f310b108-c85c-4eea-b4b1-e24480723fe3",
          "url": "/v2/domains/f310b108-c85c-4eea-b4b1-e24480723fe3",
          "created_at": "2014-06-19T17:19:05-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-37.example.com"
        }
      },
      {
        "metadata": {
          "guid": "0133f2ab-ac48-443e-a309-60fd2fce2d26",
          "url": "/v2/domains/0133f2ab-ac48-443e-a309-60fd2fce2d26",
          "created_at": "2014-06-19T17:19:05-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-38.example.com",
          "owning_organization_guid": "dc6ab0cb-ae49-4d1b-8c11-2be4b25ec0d1",
          "owning_organization_url": "/v2/organizations/dc6ab0cb-ae49-4d1b-8c11-2be4b25ec0d1",
          "spaces_url": "/v2/domains/0133f2ab-ac48-443e-a309-60fd2fce2d26/spaces"
        }
      },
      {
        "metadata": {
          "guid": "6da53735-bba3-4923-b6eb-be1b7ed45296",
          "url": "/v2/domains/6da53735-bba3-4923-b6eb-be1b7ed45296",
          "created_at": "2014-06-19T17:19:05-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-39.example.com"
        }
      }
    ]
  }

