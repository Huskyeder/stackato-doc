
Retrieve a Particular Quota_definition
--------------------------------------


GET /v2/quota_definitions/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| Name                       | Description                                           | Default | Valid Values | Example Values |
|                            |                                                       |         |              |                |
+============================+=======================================================+=========+==============+================+
| guid                       | The guid of the quota definition.                     |         |              |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| name                       | The name for the quota definition.                    |         |              | - gold_quota   |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| non_basic_services_allowed | If an organization can have non basic services        |         | - true       |                |
|                            |                                                       |         | - false      |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| total_services             | How many services an organization can have.           |         |              | - 5            |
|                            |                                                       |         |              | - 201          |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| total_routes               | How many routes an organization can have.             |         |              | - 10           |
|                            |                                                       |         |              | - 23           |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| memory_limit               | How much memory in megabyte an organization can have. |         |              | - 5120         |
|                            |                                                       |         |              | - 10024        |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| trial_db_allowed           | If an organization can have a trial db.               |         |              |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEyIiwiZW1haWwiOiJlbWFpbC0xMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.JJnq11IGp2HyRM_sr-ScfxuPqKsqKIglG063vj5Q2C0
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/quota_definitions/9610e95c-e795-462c-9db1-93097f8a29f2


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/quota_definitions/9610e95c-e795-462c-9db1-93097f8a29f2" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEyIiwiZW1haWwiOiJlbWFpbC0xMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.JJnq11IGp2HyRM_sr-ScfxuPqKsqKIglG063vj5Q2C0" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 1622a445-79c6-4c4e-a55e-5db0e6143b4a
  Content-Length: 434
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
      "guid": "9610e95c-e795-462c-9db1-93097f8a29f2",
      "url": "/v2/quota_definitions/9610e95c-e795-462c-9db1-93097f8a29f2",
      "created_at": "2014-04-07T11:18:55-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name-24",
      "non_basic_services_allowed": true,
      "total_services": 60,
      "memory_limit": 20480,
      "trial_db_allowed": false,
      "allow_sudo": false,
      "total_routes": 1000
    }
  }

