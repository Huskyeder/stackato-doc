
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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE1IiwiZW1haWwiOiJlbWFpbC0xNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.AziGO22foRaT9y3qy7ubBw2XgMBLL0h2hN-j02F-2tw
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/buildpacks/4cebc1c8-e32c-40f8-b3e5-6d6273951700


Body
^^^^

::

  {"position":3}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/4cebc1c8-e32c-40f8-b3e5-6d6273951700" -d '{"position":3}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE1IiwiZW1haWwiOiJlbWFpbC0xNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.AziGO22foRaT9y3qy7ubBw2XgMBLL0h2hN-j02F-2tw" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: d3728ffa-6e3a-4645-9eed-d663a64c63f5
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
      "guid": "4cebc1c8-e32c-40f8-b3e5-6d6273951700",
      "url": "/v2/buildpacks/4cebc1c8-e32c-40f8-b3e5-6d6273951700",
      "created_at": "2014-04-07T11:18:57-07:00",
      "updated_at": "2014-04-07T11:18:57-07:00"
    },
    "entity": {
      "name": "name_1",
      "position": 3,
      "enabled": true
    }
  }

