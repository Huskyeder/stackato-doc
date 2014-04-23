
Updating a quota definition
---------------------------


PUT /v2/quota_definitions/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwIiwiZW1haWwiOiJlbWFpbC0xMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.SdYad3HjFClO2Jg9aqC57lVAbGrfW2VI3ApkaRm6nlE
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/quota_definitions/38b4973d-79ea-4f73-a61f-a599e6fb17f5


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

  curl "https://api.[your-domain.com]/v2/quota_definitions/38b4973d-79ea-4f73-a61f-a599e6fb17f5" -d '{
    "name": "gold_quota",
    "non_basic_services_allowed": true,
    "total_services": 5,
    "total_routes": 10,
    "memory_limit": 5120
  }' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwIiwiZW1haWwiOiJlbWFpbC0xMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM1fQ.SdYad3HjFClO2Jg9aqC57lVAbGrfW2VI3ApkaRm6nlE" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 43209b7e-9a79-4be1-b6c3-97b38c63f633
  Content-Length: 456
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
      "guid": "38b4973d-79ea-4f73-a61f-a599e6fb17f5",
      "url": "/v2/quota_definitions/38b4973d-79ea-4f73-a61f-a599e6fb17f5",
      "created_at": "2014-04-07T11:18:55-07:00",
      "updated_at": "2014-04-07T11:18:55-07:00"
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

