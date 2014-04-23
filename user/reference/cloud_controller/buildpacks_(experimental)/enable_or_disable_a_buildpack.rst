
Enable or disable a buildpack
-----------------------------


PUT /v2/buildpacks
~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| Name     | Description                                                                                  | Default | Valid Values | Example Values     |
|          |                                                                                              |         |              |                    |
+==========+==============================================================================================+=========+==============+====================+
| guid     | The guid of the buildpack.                                                                   |         |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| name     | The name of the buildpack. To be used by app buildpack field. (only alphanumeric characters) |         |              | - Golang_buildpack |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| position | The order in which the buildpacks are checked during buildpack auto-detection.               |         |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| enabled  | Whether or not the buildpack will be used for staging                                        | true    |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.phxOndcD4GbuXtvq_QDdPwF-9eBu9rRGIzlLpmuPSUk
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8


Body
^^^^

::

  {"enabled":false}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8" -d '{"enabled":false}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.phxOndcD4GbuXtvq_QDdPwF-9eBu9rRGIzlLpmuPSUk" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: b7c45915-37c4-4aee-99c9-7a6e25769ea1
  Content-Length: 315
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
      "guid": "60635e2e-0ec2-484f-8557-d294ffa206d8",
      "url": "/v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8",
      "created_at": "2014-04-07T11:18:57-07:00",
      "updated_at": "2014-04-07T11:18:57-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": false
    }
  }


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.phxOndcD4GbuXtvq_QDdPwF-9eBu9rRGIzlLpmuPSUk
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8


Body
^^^^

::

  {"enabled":true}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8" -d '{"enabled":true}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE2IiwiZW1haWwiOiJlbWFpbC0xNkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.phxOndcD4GbuXtvq_QDdPwF-9eBu9rRGIzlLpmuPSUk" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: b5bf7171-dc22-4eb3-a89e-5465542373f6
  Content-Length: 314
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
      "guid": "60635e2e-0ec2-484f-8557-d294ffa206d8",
      "url": "/v2/buildpacks/60635e2e-0ec2-484f-8557-d294ffa206d8",
      "created_at": "2014-04-07T11:18:57-07:00",
      "updated_at": "2014-04-07T11:18:57-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": true
    }
  }

