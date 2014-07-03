
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYyIiwiZW1haWwiOiJlbWFpbC01NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.k8PxXcMUsPLeOyowkdSKxsLaqdSKCWpWJ5sV4bIyKRg
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYyIiwiZW1haWwiOiJlbWFpbC01NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.k8PxXcMUsPLeOyowkdSKxsLaqdSKCWpWJ5sV4bIyKRg" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/buildpacks/6b93f671-fd04-4717-9e1a-f1f998528f7d
  X-VCAP-Request-ID: 066c9218-c6fd-4d49-902d-1dc497b8ad2d
  Content-Length: 344
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
      "guid": "6b93f671-fd04-4717-9e1a-f1f998528f7d",
      "url": "/v2/buildpacks/6b93f671-fd04-4717-9e1a-f1f998528f7d",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "Golang_buildpack",
      "position": 4,
      "enabled": true,
      "locked": false,
      "filename": null
    }
  }

