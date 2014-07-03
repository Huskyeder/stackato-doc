
Lock or unlock a buildpack
--------------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY0IiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.2wHk67bKZn9rD491cYLaK-2oNL3hmeeisz6NEfHIh_I
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc


Body
^^^^

::

  {"locked":true}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc" -d '{"locked":true}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY0IiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.2wHk67bKZn9rD491cYLaK-2oNL3hmeeisz6NEfHIh_I" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 7e5b4b19-fe74-4f4c-b76a-b759d750a61d
  Content-Length: 356
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
      "guid": "feba83a6-feac-4c2f-a9a7-7fa803c342cc",
      "url": "/v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": "2014-06-19T17:18:58-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 1,
      "enabled": true,
      "locked": true,
      "filename": null
    }
  }


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY0IiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.2wHk67bKZn9rD491cYLaK-2oNL3hmeeisz6NEfHIh_I
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc


Body
^^^^

::

  {"locked":false}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc" -d '{"locked":false}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY0IiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.2wHk67bKZn9rD491cYLaK-2oNL3hmeeisz6NEfHIh_I" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 851ac46f-00db-4e3e-9043-b9a7ee2cc201
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
      "guid": "feba83a6-feac-4c2f-a9a7-7fa803c342cc",
      "url": "/v2/buildpacks/feba83a6-feac-4c2f-a9a7-7fa803c342cc",
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

