
List all Shared Domains
-----------------------


GET /v2/shared_domains
~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+-------------------------+---------+--------------+-------------------+
| Name | Description             | Default | Valid Values | Example Values    |
|      |                         |         |              |                   |
+======+=========================+=========+==============+===================+
| guid | The guid of the domain. |         |              |                   |
|      |                         |         |              |                   |
+------+-------------------------+---------+--------------+-------------------+
| name | The name of the domain. |         |              | - example.com     |
|      |                         |         |              | - foo.example.com |
|      |                         |         |              |                   |
+------+-------------------------+---------+--------------+-------------------+


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEiLCJlbWFpbCI6ImVtYWlsLTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.KanctlpozuLePI1WMX5oFQK0ErpiqoCjzUdhgPExVpc
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/shared_domains


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEiLCJlbWFpbCI6ImVtYWlsLTFAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.KanctlpozuLePI1WMX5oFQK0ErpiqoCjzUdhgPExVpc" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: d6dbe518-1849-4baf-84e1-a5337264df9d
  Content-Length: 1026
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
          "guid": "dd9a4410-a97b-4d56-8dc4-b04223dd6e7d",
          "url": "/v2/shared_domains/dd9a4410-a97b-4d56-8dc4-b04223dd6e7d",
          "created_at": "2014-04-07T11:18:51-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-1.com"
        }
      },
      {
        "metadata": {
          "guid": "cd1247f5-8952-476a-92e3-fbfbb5b488f2",
          "url": "/v2/shared_domains/cd1247f5-8952-476a-92e3-fbfbb5b488f2",
          "created_at": "2014-04-07T11:18:51-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-2.com"
        }
      },
      {
        "metadata": {
          "guid": "8ef44517-7f2b-4df1-9bde-5bca4e9d5eb9",
          "url": "/v2/shared_domains/8ef44517-7f2b-4df1-9bde-5bca4e9d5eb9",
          "created_at": "2014-04-07T11:18:51-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-3.com"
        }
      }
    ]
  }

