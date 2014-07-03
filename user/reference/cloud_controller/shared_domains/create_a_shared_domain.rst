
Create a shared domain
----------------------


POST /v2/shared_domains
~~~~~~~~~~~~~~~~~~~~~~~


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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU3IiwiZW1haWwiOiJlbWFpbC01MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.SHaeTmdR9AeUg-TnMdDHHaW5vSi_qMMWjMACd1EnvnU
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/shared_domains


Body
^^^^

::

  {
    "name": "example.com"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains" -d '{
    "name": "example.com"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU3IiwiZW1haWwiOiJlbWFpbC01MUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.SHaeTmdR9AeUg-TnMdDHHaW5vSi_qMMWjMACd1EnvnU" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/shared_domains/5fe4e320-a5cd-4094-b19f-d29dd8330bb6
  X-VCAP-Request-ID: a8c6c9ae-a01d-4d47-89f1-f14cef06fc18
  Content-Length: 260
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  201 Created


Body
^^^^

::

  {
    "metadata": {
      "guid": "5fe4e320-a5cd-4094-b19f-d29dd8330bb6",
      "url": "/v2/shared_domains/5fe4e320-a5cd-4094-b19f-d29dd8330bb6",
      "created_at": "2014-06-19T17:18:57-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "example.com"
    }
  }

