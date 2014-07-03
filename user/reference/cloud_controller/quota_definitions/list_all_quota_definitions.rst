
List all Quota Definitions
--------------------------


GET /v2/quota_definitions
~~~~~~~~~~~~~~~~~~~~~~~~~


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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------+
| Name                   | Description                                                                   |
|                        |                                                                               |
+========================+===============================================================================+
| q                      | Parameters used to filter the result set. Valid filters: name, allow_sudo     |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcwIiwiZW1haWwiOiJlbWFpbC02NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM5fQ.zGk5BG1IamMQFHiqnbCzx4i3d8xfFyMxwGaQrNsSPmE
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/quota_definitions


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/quota_definitions" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcwIiwiZW1haWwiOiJlbWFpbC02NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM5fQ.zGk5BG1IamMQFHiqnbCzx4i3d8xfFyMxwGaQrNsSPmE" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 313e6f8a-3bfe-4fb1-b612-2dea4061f3f1
  Content-Length: 107
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 0,
    "total_pages": 0,
    "prev_url": null,
    "next_url": null,
    "resources": [
  
    ]
  }

