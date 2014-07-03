
Get space summary
-----------------


GET /v2/spaces/:guid/summary
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIyIiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.Sn_QEt0M9LUp_3a87Hjl_mVOKHQgKkjs8TdQi8FBmAE
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/spaces/ee5d91d7-4fc5-492e-b5a9-3ffd32288c30/summary


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/ee5d91d7-4fc5-492e-b5a9-3ffd32288c30/summary" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIyIiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.Sn_QEt0M9LUp_3a87Hjl_mVOKHQgKkjs8TdQi8FBmAE" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: c7596c3f-9714-45b9-9d4a-a118d598ae3c
  Content-Length: 89
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"guid":"ee5d91d7-4fc5-492e-b5a9-3ffd32288c30","name":"name-304","apps":[],"services":[]}

