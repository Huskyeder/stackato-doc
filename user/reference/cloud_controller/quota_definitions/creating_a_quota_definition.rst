
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTExIiwiZW1haWwiOiJlbWFpbC0xMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.SV60IgYe7vGJHLC4wTUX3B2TEInG9WJflBlfiCwWrSw
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTExIiwiZW1haWwiOiJlbWFpbC0xMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.SV60IgYe7vGJHLC4wTUX3B2TEInG9WJflBlfiCwWrSw" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/quota_definitions/ce703835-fd24-4219-8908-203af21f7d01
  X-VCAP-Request-ID: 8f8bbd0b-44db-4b8d-92d0-51cbf7d9d76a
  Content-Length: 433
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
      "guid": "ce703835-fd24-4219-8908-203af21f7d01",
      "url": "/v2/quota_definitions/ce703835-fd24-4219-8908-203af21f7d01",
      "created_at": "2014-04-07T11:18:55-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "gold_quota",
      "non_basic_services_allowed": true,
      "total_services": 5,
      "memory_limit": 5120,
      "trial_db_allowed": false,
      "allow_sudo": false,
      "total_routes": 10
    }
  }

