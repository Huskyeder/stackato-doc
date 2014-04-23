
Retrieve a Particular Buildpack
-------------------------------


GET /v2/buildpacks/:guid
~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE4IiwiZW1haWwiOiJlbWFpbC0xOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.NM0o-aasqBMmsPX_56EhzjS_B6yn6Hi0Wll5JNgZZRs
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/buildpacks/13f51bf2-0695-4815-8188-3a5831e4fc67


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/13f51bf2-0695-4815-8188-3a5831e4fc67" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE4IiwiZW1haWwiOiJlbWFpbC0xOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.NM0o-aasqBMmsPX_56EhzjS_B6yn6Hi0Wll5JNgZZRs" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: fa0b1dbb-ad9e-4fdf-905e-40e5de586099
  Content-Length: 291
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
      "guid": "13f51bf2-0695-4815-8188-3a5831e4fc67",
      "url": "/v2/buildpacks/13f51bf2-0695-4815-8188-3a5831e4fc67",
      "created_at": "2014-04-07T11:18:57-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": true
    }
  }

