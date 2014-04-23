
List all Buildpacks
-------------------


GET /v2/buildpacks
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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------+
| Name                   | Description                                                                   |
|                        |                                                                               |
+========================+===============================================================================+
| q                      | Parameters used to filter the result set. Valid filters: name                 |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                      |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                           |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                    |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N. |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                    |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                             |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.               |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                               |
|                        |                                                                               |
+------------------------+-------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIxIiwiZW1haWwiOiJlbWFpbC0yMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.FU3M_fowKY6Yyg6HD4twdYAxw_s3nxkkNhpX5S8hHCI
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/buildpacks


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIxIiwiZW1haWwiOiJlbWFpbC0yMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.FU3M_fowKY6Yyg6HD4twdYAxw_s3nxkkNhpX5S8hHCI" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 1ec1174b-e617-4a58-80f1-a50e495d0aa6
  Content-Length: 1140
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 3,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "5823e62a-9be9-4644-83c1-51e9a654366e",
          "url": "/v2/buildpacks/5823e62a-9be9-4644-83c1-51e9a654366e",
          "created_at": "2014-04-07T11:18:57-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name_1",
          "position": 1,
          "enabled": true
        }
      },
      {
        "metadata": {
          "guid": "f6a2a183-a4a2-4859-8c2c-9b98fcf9a631",
          "url": "/v2/buildpacks/f6a2a183-a4a2-4859-8c2c-9b98fcf9a631",
          "created_at": "2014-04-07T11:18:57-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name_2",
          "position": 2,
          "enabled": true
        }
      },
      {
        "metadata": {
          "guid": "419b223b-60ab-42e8-9a1b-3a1bfd1f33da",
          "url": "/v2/buildpacks/419b223b-60ab-42e8-9a1b-3a1bfd1f33da",
          "created_at": "2014-04-07T11:18:57-07:00",
          "updated_at": null
        },
        "entity": {
          "name": "name_3",
          "position": 3,
          "enabled": true
        }
      }
    ]
  }

