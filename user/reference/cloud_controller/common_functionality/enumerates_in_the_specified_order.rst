
enumerates in the specified order
---------------------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIzIiwiZW1haWwiOiJlbWFpbC0xN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.Rk84mVbIpA-W8Ox4ROvHMTG_Oh_OB0k5gs1RMHVYcIs
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/fakes?order-direction=desc


Query Parameters
^^^^^^^^^^^^^^^^

::

  order-direction: desc


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/fakes?order-direction=desc" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIzIiwiZW1haWwiOiJlbWFpbC0xN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.Rk84mVbIpA-W8Ox4ROvHMTG_Oh_OB0k5gs1RMHVYcIs" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 800b9674-c4a1-4eac-a7b5-15f37456f602
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
          "guid": "2aba14bc-05b2-4e5d-8f5c-a2db68dc2bf8",
          "url": "/v2/fakes/2aba14bc-05b2-4e5d-8f5c-a2db68dc2bf8",
          "created_at": null
        },
        "entity": {
          "name": "fake-2"
        }
      },
      {
        "metadata": {
          "guid": "c98a33d0-42ab-490a-9247-a43f7060adfa",
          "url": "/v2/fakes/c98a33d0-42ab-490a-9247-a43f7060adfa",
          "created_at": null
        },
        "entity": {
          "name": "fake-1"
        }
      },
      {
        "metadata": {
          "guid": "1e9f2353-0ead-4473-a3be-d68d85f51062",
          "url": "/v2/fakes/1e9f2353-0ead-4473-a3be-d68d85f51062",
          "created_at": null
        },
        "entity": {
          "name": "fake-0"
        }
      }
    ]
  }

