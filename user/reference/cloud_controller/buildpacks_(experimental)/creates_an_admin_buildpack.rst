
Creates an admin buildpack
--------------------------


POST /v2/buildpacks
~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE3IiwiZW1haWwiOiJlbWFpbC0xN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.HAQzCo0X_dFiNpmqtqTqDOTAVmPzpuoUdnGJiLPSNfM
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/buildpacks


Body
^^^^

::

  {
    "name": "Golang_buildpack"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks" -d '{
    "name": "Golang_buildpack"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE3IiwiZW1haWwiOiJlbWFpbC0xN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.HAQzCo0X_dFiNpmqtqTqDOTAVmPzpuoUdnGJiLPSNfM" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/buildpacks/086b2936-4840-4abd-87f7-8fdb2381bbd8
  X-VCAP-Request-ID: 1d471b80-2659-43b2-a34d-f1dbd7401899
  Content-Length: 301
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
      "guid": "086b2936-4840-4abd-87f7-8fdb2381bbd8",
      "url": "/v2/buildpacks/086b2936-4840-4abd-87f7-8fdb2381bbd8",
      "created_at": "2014-04-07T11:18:57-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "Golang_buildpack",
      "position": 1,
      "enabled": true
    }
  }

