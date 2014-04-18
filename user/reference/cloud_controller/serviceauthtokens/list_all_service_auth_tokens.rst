
List all Service Auth Tokens
----------------------------


GET /v2/service_auth_tokens
~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------+-----------------------------------------------+---------+--------------+----------------+
| Name     | Description                                   | Default | Valid Values | Example Values |
|          |                                               |         |              |                |
+==========+===============================================+=========+==============+================+
| guid     | The guid of the service auth token.           |         |              |                |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| label    | Human readable name for the auth token        |         |              | - Nic-Token    |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| provider | Human readable name of service provider       |         |              | - Face-Offer   |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| token    | The secret auth token used for authenticating |         |              |                |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------+
| Name                   | Description                                                                   |
|                        |                                                                               |
+========================+===============================================================================+
| q                      | Parameters used to filter the result set. Valid filters: label, provider      |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI4IiwiZW1haWwiOiJlbWFpbC0yOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.wPQAM5WCIcPuDrV5x_X_WkcVjgdpguwDyoR1l_jW1ME
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_auth_tokens


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_auth_tokens" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI4IiwiZW1haWwiOiJlbWFpbC0yOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.wPQAM5WCIcPuDrV5x_X_WkcVjgdpguwDyoR1l_jW1ME" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 1de8c6b6-26ef-44a3-aea0-8c97172ad5eb
  Content-Length: 1131
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
          "guid": "c0c71de9-582a-4e71-ba0e-66ec02cc2d66",
          "url": "/v2/service_auth_tokens/c0c71de9-582a-4e71-ba0e-66ec02cc2d66",
          "created_at": "2014-04-07T11:19:03-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-1",
          "provider": "provider-1"
        }
      },
      {
        "metadata": {
          "guid": "626295a1-8412-4a41-9680-de7538f831a9",
          "url": "/v2/service_auth_tokens/626295a1-8412-4a41-9680-de7538f831a9",
          "created_at": "2014-04-07T11:19:03-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-2",
          "provider": "provider-2"
        }
      },
      {
        "metadata": {
          "guid": "04075e41-cd90-41ff-950b-93bccc12373f",
          "url": "/v2/service_auth_tokens/04075e41-cd90-41ff-950b-93bccc12373f",
          "created_at": "2014-04-07T11:19:03-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-3",
          "provider": "provider-3"
        }
      }
    ]
  }

