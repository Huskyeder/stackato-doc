
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
| locked   | Whether or not the buildpack is locked to prevent updates                                    | false   |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| filename | The name of the uploaded buildpack file                                                      |         |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYzIiwiZW1haWwiOiJlbWFpbC01N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.5UnqinvGq7cdmzzsdmIxyLYNqrYWlbFrDu27zeR9T30
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/buildpacks/f6022df5-11ae-4cac-b41e-33f6e0e80a6a


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/f6022df5-11ae-4cac-b41e-33f6e0e80a6a" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYzIiwiZW1haWwiOiJlbWFpbC01N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.5UnqinvGq7cdmzzsdmIxyLYNqrYWlbFrDu27zeR9T30" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 84a93253-d46a-44ca-8275-6e11aa57186a
  Content-Length: 334
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
      "guid": "f6022df5-11ae-4cac-b41e-33f6e0e80a6a",
      "url": "/v2/buildpacks/f6022df5-11ae-4cac-b41e-33f6e0e80a6a",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": true,
      "locked": false,
      "filename": null
    }
  }

