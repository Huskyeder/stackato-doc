
Retrieve a Particular Shared_domain
-----------------------------------


GET /v2/shared_domains/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU0IiwiZW1haWwiOiJlbWFpbC00OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM2fQ.jy6Oo7wNScjSZlqVo8UY7sPdOd01KNBlyhnYBkOUz8Q
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/shared_domains/58ba0996-f09d-4f8d-92e9-8c80552a7398


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains/58ba0996-f09d-4f8d-92e9-8c80552a7398" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU0IiwiZW1haWwiOiJlbWFpbC00OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM2fQ.jy6Oo7wNScjSZlqVo8UY7sPdOd01KNBlyhnYBkOUz8Q" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 97458d64-6b46-4d0a-9643-241fe7a3a108
  Content-Length: 270
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "metadata": {
      "guid": "58ba0996-f09d-4f8d-92e9-8c80552a7398",
      "url": "/v2/shared_domains/58ba0996-f09d-4f8d-92e9-8c80552a7398",
      "created_at": "2014-06-19T17:18:56-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-17.example.com"
    }
  }

