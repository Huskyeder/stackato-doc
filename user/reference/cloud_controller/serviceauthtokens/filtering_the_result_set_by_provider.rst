
Filtering the result set by provider
------------------------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMwIiwiZW1haWwiOiJlbWFpbC0zMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.3yl6LZYkpiWtH6El8o2FTt854kKfLcoosbWrw5Y4xnU
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_auth_tokens


Query Parameters
^^^^^^^^^^^^^^^^

::

  q: provider:Face-Offer


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_auth_tokens" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMwIiwiZW1haWwiOiJlbWFpbC0zMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.3yl6LZYkpiWtH6El8o2FTt854kKfLcoosbWrw5Y4xnU" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 368a07c3-1b42-48b7-95f5-fa6b9dc07884
  Content-Length: 448
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 1,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "21d34918-6f9d-4f3b-93d4-6a2c3431b3c5",
          "url": "/v2/service_auth_tokens/21d34918-6f9d-4f3b-93d4-6a2c3431b3c5",
          "created_at": "2014-04-07T11:19:03-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-10",
          "provider": "Face-Offer"
        }
      }
    ]
  }

