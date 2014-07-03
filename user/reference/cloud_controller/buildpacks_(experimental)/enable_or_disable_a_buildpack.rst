
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC02MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.Owd1qa4g-yptMW31_3p2-wNym4WdD8qlPHNdjJD3NkY
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c


Body
^^^^

::

  {"enabled":false}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c" -d '{"enabled":false}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC02MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.Owd1qa4g-yptMW31_3p2-wNym4WdD8qlPHNdjJD3NkY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 68318077-37ba-4190-8a46-977a59e988bc
  Content-Length: 358
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
      "guid": "d46dc94e-b8ee-4f70-94bc-2071fd1bb66c",
      "url": "/v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": "2014-06-19T17:18:58-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": false,
      "locked": false,
      "filename": null
    }
  }


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC02MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.Owd1qa4g-yptMW31_3p2-wNym4WdD8qlPHNdjJD3NkY
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c


Body
^^^^

::

  {"enabled":true}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c" -d '{"enabled":true}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY2IiwiZW1haWwiOiJlbWFpbC02MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.Owd1qa4g-yptMW31_3p2-wNym4WdD8qlPHNdjJD3NkY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 9ff98839-df8b-4273-b20a-c9f6273faabd
  Content-Length: 357
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
      "guid": "d46dc94e-b8ee-4f70-94bc-2071fd1bb66c",
      "url": "/v2/buildpacks/d46dc94e-b8ee-4f70-94bc-2071fd1bb66c",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": "2014-06-19T17:18:58-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": true,
      "locked": false,
      "filename": null
    }
  }

