
Creating a quota definition
---------------------------


POST /v2/quota_definitions
~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| Name                       | Description                                           | Default | Valid Values | Example Values |
|                            |                                                       |         |              |                |
+============================+=======================================================+=========+==============+================+
| guid                       | The guid of the quota definition.                     |         |              |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| name                       | The name for the quota definition.                    |         |              | - gold_quota   |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| non_basic_services_allowed | If an organization can have non basic services        |         | - true       |                |
|                            |                                                       |         | - false      |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| total_services             | How many services an organization can have.           |         |              | - 5            |
|                            |                                                       |         |              | - 201          |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| total_routes               | How many routes an organization can have.             |         |              | - 10           |
|                            |                                                       |         |              | - 23           |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| memory_limit               | How much memory in megabyte an organization can have. |         |              | - 5120         |
|                            |                                                       |         |              | - 10024        |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+
| trial_db_allowed           | If an organization can have a trial db.               |         |              |                |
|                            |                                                       |         |              |                |
+----------------------------+-------------------------------------------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcyIiwiZW1haWwiOiJlbWFpbC02NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM5fQ.CfFeoFbFPlI1319NbBNKpe1PZzx3g_-8Q9uiYFuXjY0
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/quota_definitions


Body
^^^^

::

  {
    "name": "gold_quota",
    "non_basic_services_allowed": true,
    "total_services": 5,
    "total_routes": 10,
    "memory_limit": 5120
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/quota_definitions" -d '{
    "name": "gold_quota",
    "non_basic_services_allowed": true,
    "total_services": 5,
    "total_routes": 10,
    "memory_limit": 5120
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcyIiwiZW1haWwiOiJlbWFpbC02NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM5fQ.CfFeoFbFPlI1319NbBNKpe1PZzx3g_-8Q9uiYFuXjY0" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/quota_definitions/e574cafa-568b-4674-92fa-f0f1673fd1ff
  X-VCAP-Request-ID: 7c0d2137-2519-49ac-9e32-5daeff64d7b1
  Content-Length: 458
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
      "guid": "e574cafa-568b-4674-92fa-f0f1673fd1ff",
      "url": "/v2/quota_definitions/e574cafa-568b-4674-92fa-f0f1673fd1ff",
      "created_at": "2014-06-19T17:18:59-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "gold_quota",
      "non_basic_services_allowed": true,
      "total_services": 5,
      "memory_limit": 5120,
      "trial_db_allowed": false,
      "allow_sudo": false,
      "total_routes": 10,
      "total_droplets": 5
    }
  }

