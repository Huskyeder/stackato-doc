
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ0IiwiZW1haWwiOiJlbWFpbC00NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.doLnNu5Ej_Tjl4KTLOb0Xpz1Jyl8wNYPzztI1XJMawU
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ0IiwiZW1haWwiOiJlbWFpbC00NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.doLnNu5Ej_Tjl4KTLOb0Xpz1Jyl8wNYPzztI1XJMawU" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: fe20d8dd-5a35-4ed8-91fc-a23c57d42797
  Content-Length: 1539
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
          "guid": "d9f314c3-d69b-4131-bcd7-ad27c80cf67d",
          "url": "/v2/private_domains/d9f314c3-d69b-4131-bcd7-ad27c80cf67d",
          "created_at": "2014-04-07T11:19:12-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-33.com",
          "owning_organization_guid": "eed2c6c1-4f8e-42f7-89a1-5a9294705cf4",
          "owning_organization_url": "/v2/organizations/eed2c6c1-4f8e-42f7-89a1-5a9294705cf4"
        }
      },
      {
        "metadata": {
          "guid": "385d41bd-e99d-4258-adcf-08573748b007",
          "url": "/v2/private_domains/385d41bd-e99d-4258-adcf-08573748b007",
          "created_at": "2014-04-07T11:19:12-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-34.com",
          "owning_organization_guid": "86e771ce-311d-4141-a31d-7416f1519dcf",
          "owning_organization_url": "/v2/organizations/86e771ce-311d-4141-a31d-7416f1519dcf"
        }
      },
      {
        "metadata": {
          "guid": "9e52834d-5c80-419a-bcb1-0b036787ecb4",
          "url": "/v2/private_domains/9e52834d-5c80-419a-bcb1-0b036787ecb4",
          "created_at": "2014-04-07T11:19:12-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-35.com",
          "owning_organization_guid": "46bbbda3-c3ea-4069-9a76-2aa6d9ef4eae",
          "owning_organization_url": "/v2/organizations/46bbbda3-c3ea-4069-9a76-2aa6d9ef4eae"
        }
      }
    ]
  }

