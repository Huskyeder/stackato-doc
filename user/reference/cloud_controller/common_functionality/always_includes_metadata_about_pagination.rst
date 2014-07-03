
always includes metadata about pagination
-----------------------------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI1IiwiZW1haWwiOiJlbWFpbC0xOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.oXVVT9m2usif_96c5ZN4Ak1f2qkZf3pquqEUgpQDANI
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI1IiwiZW1haWwiOiJlbWFpbC0xOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI5fQ.oXVVT9m2usif_96c5ZN4Ak1f2qkZf3pquqEUgpQDANI" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 543c81ca-1be9-4b09-8744-38169a48e9ff
  Content-Length: 107
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 0,
    "total_pages": 0,
    "prev_url": null,
    "next_url": null,
    "resources": [
  
    ]
  }

