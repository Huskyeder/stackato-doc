
enumerates in ascending order
-----------------------------


GET /v2/fakes
~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+-------------+---------+--------------+----------------+
| Name | Description | Default | Valid Values | Example Values |
|      |             |         |              |                |
+======+=============+=========+==============+================+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI0IiwiZW1haWwiOiJlbWFpbC0xOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.51cQbDJWT2mbTlSO3nKJnJtWE6mu_vuB33iso1m84t4
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/fakes


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/fakes" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI0IiwiZW1haWwiOiJlbWFpbC0xOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.51cQbDJWT2mbTlSO3nKJnJtWE6mu_vuB33iso1m84t4" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: dc9cfebf-faa8-410e-98dc-1d4a9d942778
  Content-Length: 828
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
          "guid": "0760cc08-b49f-4650-a335-83214c0b6e9e",
          "url": "/v2/fakes/0760cc08-b49f-4650-a335-83214c0b6e9e",
          "created_at": null
        },
        "entity": {
          "name": "fake-0"
        }
      },
      {
        "metadata": {
          "guid": "d7b6a246-87d4-43b6-a430-054122d2e2c2",
          "url": "/v2/fakes/d7b6a246-87d4-43b6-a430-054122d2e2c2",
          "created_at": null
        },
        "entity": {
          "name": "fake-1"
        }
      },
      {
        "metadata": {
          "guid": "6f686a4e-f378-4131-9166-b4eef781eae8",
          "url": "/v2/fakes/6f686a4e-f378-4131-9166-b4eef781eae8",
          "created_at": null
        },
        "entity": {
          "name": "fake-2"
        }
      }
    ]
  }

