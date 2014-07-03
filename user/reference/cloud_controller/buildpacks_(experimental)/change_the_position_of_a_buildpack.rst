
Change the position of a buildpack
----------------------------------


PUT /v2/buildpacks
~~~~~~~~~~~~~~~~~~

Buildpacks are maintained in an ordered list. If the target position is already occupied, the entries will be shifted down the list to make room. If the target position is beyond the end of the current list, the buildpack will be positioned at the end of the list.
Position 0 indicates an unpriorized buildpack. Unprioritized buildpacks will be treated as if the are at the end of the list. No ordering is implied across unprioritized buildpacks.

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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY1IiwiZW1haWwiOiJlbWFpbC01OUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.AF5ENOXP6CpFrCYLjEhtPINDdIo_IffimH9pYyzfXTE
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/27bd71f1-56c1-4370-a988-9aefd380fd8c


Body
^^^^

::

  {"position":3}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/27bd71f1-56c1-4370-a988-9aefd380fd8c" -d '{"position":3}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTY1IiwiZW1haWwiOiJlbWFpbC01OUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM4fQ.AF5ENOXP6CpFrCYLjEhtPINDdIo_IffimH9pYyzfXTE" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: ff89f3b9-6589-45ca-b78b-434ba8695b64
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
      "guid": "27bd71f1-56c1-4370-a988-9aefd380fd8c",
      "url": "/v2/buildpacks/27bd71f1-56c1-4370-a988-9aefd380fd8c",
      "created_at": "2014-06-19T17:18:58-07:00",
      "updated_at": "2014-06-19T17:18:58-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 3,
      "enabled": true,
      "locked": false,
      "filename": null
    }
  }

