
List all Private Domains
------------------------


GET /v2/private_domains
~~~~~~~~~~~~~~~~~~~~~~~


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
| owning_organization_guid | The organization that owns the domain. If not specified, the domain is shared. |         |              |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------+
| Name                   | Description                                                                   |
|                        |                                                                               |
+========================+===============================================================================+
| q                      | Parameters used to filter the result set. Valid filters: name                 |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMyIiwiZW1haWwiOiJlbWFpbC0yNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.1GW5iGBBtrGHcMoyaMSsxDZPOCcWdSGA7RCxi2O9viM
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/private_domains


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMyIiwiZW1haWwiOiJlbWFpbC0yNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.1GW5iGBBtrGHcMoyaMSsxDZPOCcWdSGA7RCxi2O9viM" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: a0ed30fe-d818-42be-9e13-da1af8eb23eb
  Content-Length: 1560
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
          "guid": "c447082b-4c47-4efe-97b1-70892e7abd94",
          "url": "/v2/private_domains/c447082b-4c47-4efe-97b1-70892e7abd94",
          "created_at": "2014-06-19T17:18:50-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-5.example.com",
          "owning_organization_guid": "58be8c92-d005-432f-b39f-c09a0d462e96",
          "owning_organization_url": "/v2/organizations/58be8c92-d005-432f-b39f-c09a0d462e96"
        }
      },
      {
        "metadata": {
          "guid": "dfd95467-43f1-4472-b1cc-49d040d6d5a9",
          "url": "/v2/private_domains/dfd95467-43f1-4472-b1cc-49d040d6d5a9",
          "created_at": "2014-06-19T17:18:50-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-6.example.com",
          "owning_organization_guid": "34d15c85-a264-4b1e-b253-999fa0c78a7d",
          "owning_organization_url": "/v2/organizations/34d15c85-a264-4b1e-b253-999fa0c78a7d"
        }
      },
      {
        "metadata": {
          "guid": "2ac9eadf-d43c-45db-8562-9463392d1451",
          "url": "/v2/private_domains/2ac9eadf-d43c-45db-8562-9463392d1451",
          "created_at": "2014-06-19T17:18:50-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-7.example.com",
          "owning_organization_guid": "1e86bbcc-1786-429d-9691-bebde502cfbe",
          "owning_organization_url": "/v2/organizations/1e86bbcc-1786-429d-9691-bebde502cfbe"
        }
      }
    ]
  }

