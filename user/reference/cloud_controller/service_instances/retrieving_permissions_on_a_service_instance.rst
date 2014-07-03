
Retrieving permissions on a service instance
--------------------------------------------


GET /v2/service_instances/:guid/permissions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+----------------------------------+---------+--------------+----------------------------------------+
| Name | Description                      | Default | Valid Values | Example Values                         |
|      |                                  |         |              |                                        |
+======+==================================+=========+==============+========================================+
| guid | The guid of the service instance |         |              | - 6c4bd80f-4593-41d1-a2c9-b20cb65ec76e |
|      |                                  |         |              |                                        |
+------+----------------------------------+---------+--------------+----------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYwIiwiZW1haWwiOiJlbWFpbC01NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.eLP2sc_BohVfL_HLicdbU_0C8n8oEXfdVOp-Pq8DhPw
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_instances/bfedf850-135d-4d4b-993b-c70cab53339a/permissions


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_instances/bfedf850-135d-4d4b-993b-c70cab53339a/permissions" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYwIiwiZW1haWwiOiJlbWFpbC01NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.eLP2sc_BohVfL_HLicdbU_0C8n8oEXfdVOp-Pq8DhPw" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 9a4e7de8-ab03-4ace-9cb8-80f19ce34a8f
  Content-Length: 15
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"manage":true}

