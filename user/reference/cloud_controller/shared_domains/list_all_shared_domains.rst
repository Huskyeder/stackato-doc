
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU1IiwiZW1haWwiOiJlbWFpbC00OUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.0-Zyt-71sPnV1xci4n-Q2TUAIL0JbduzX_NfpThK7dY
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU1IiwiZW1haWwiOiJlbWFpbC00OUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.0-Zyt-71sPnV1xci4n-Q2TUAIL0JbduzX_NfpThK7dY" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 3dea7e37-48be-4ca7-b4a2-ee45bc79ae7a
  Content-Length: 1053
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
          "guid": "2a57b4e6-251b-4ed0-8849-ad0c4d4d9c1f",
          "url": "/v2/shared_domains/2a57b4e6-251b-4ed0-8849-ad0c4d4d9c1f",
          "created_at": "2014-06-19T17:18:56-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-20.example.com"
        }
      },
      {
        "metadata": {
          "guid": "bcc37f6e-50e8-4d93-ac48-f19747c38cfe",
          "url": "/v2/shared_domains/bcc37f6e-50e8-4d93-ac48-f19747c38cfe",
          "created_at": "2014-06-19T17:18:56-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-21.example.com"
        }
      },
      {
        "metadata": {
          "guid": "c835ecc5-b699-4d95-bbae-50c684fed75b",
          "url": "/v2/shared_domains/c835ecc5-b699-4d95-bbae-50c684fed75b",
          "created_at": "2014-06-19T17:18:57-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "domain-22.example.com"
        }
      }
    ]
  }

