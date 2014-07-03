
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM3IiwiZW1haWwiOiJlbWFpbC0zMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMyfQ.Cgn8P-wnJj_bdCyDnXO1nZlZOj6W8WPCbOzG0FXWlVk
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM3IiwiZW1haWwiOiJlbWFpbC0zMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMyfQ.Cgn8P-wnJj_bdCyDnXO1nZlZOj6W8WPCbOzG0FXWlVk" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 93d65882-91ec-4743-86b5-9696aa64bb17
  Content-Length: 1135
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
          "guid": "40335045-77cf-45e5-9958-00a6ad0b5b04",
          "url": "/v2/service_auth_tokens/40335045-77cf-45e5-9958-00a6ad0b5b04",
          "created_at": "2014-06-19T17:18:52-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-9",
          "provider": "provider-9"
        }
      },
      {
        "metadata": {
          "guid": "2653deeb-42fa-497d-aa33-ae72542ebd7c",
          "url": "/v2/service_auth_tokens/2653deeb-42fa-497d-aa33-ae72542ebd7c",
          "created_at": "2014-06-19T17:18:52-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-10",
          "provider": "provider-10"
        }
      },
      {
        "metadata": {
          "guid": "d582fdfa-5925-46b4-b0cd-3156c99f69e8",
          "url": "/v2/service_auth_tokens/d582fdfa-5925-46b4-b0cd-3156c99f69e8",
          "created_at": "2014-06-19T17:18:52-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-11",
          "provider": "provider-11"
        }
      }
    ]
  }

