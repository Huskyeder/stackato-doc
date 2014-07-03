
Delete a Particular Service_plans
---------------------------------


DELETE /v2/service_plans/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| Name         | Description                                                                                   | Default | Valid Values | Example Values                         |
|              |                                                                                               |         |              |                                        |
+==============+===============================================================================================+=========+==============+========================================+
| guid         | The guid of the service plan                                                                  |         |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| name         | The name of the service plan                                                                  |         |              | - 100mb                                |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| free         | A boolean describing if the service plan is free                                              |         | - true       |                                        |
|              |                                                                                               |         | - false      |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| description  | A description of the service plan                                                             |         |              | - Let's you put data in your database! |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| extra        | A JSON string with additional data about the plan                                             |         |              | - {"cost": "$2.00"}                    |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| unique_id    | A guid for the service plan in the service broker (not the same as the cloud controller guid) |         |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| public       | A boolean describing that the plan is visible to the all users                                | true    |              |                                        |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+
| service_guid | The guid of the related service                                                               |         |              | - deadbeef                             |
|              |                                                                                               |         |              |                                        |
+--------------+-----------------------------------------------------------------------------------------------+---------+--------------+----------------------------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------+-----------------------------------------------------------------------+
| Name  | Description                                                           |
|       |                                                                       |
+=======+=======================================================================+
| async | Will run the delete request in a background job. Recommended: 'true'. |
|       |                                                                       |
+-------+-----------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQzIiwiZW1haWwiOiJlbWFpbC0zN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.t4VUpeHtavlLHKPGi6-B3LYeJcWpTxuYLa8Bsw9QsGE
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/service_plans/c737d5a9-6153-4d2e-9c8f-f5820b029e34


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans/c737d5a9-6153-4d2e-9c8f-f5820b029e34" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQzIiwiZW1haWwiOiJlbWFpbC0zN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMzfQ.t4VUpeHtavlLHKPGi6-B3LYeJcWpTxuYLa8Bsw9QsGE" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 62eb0ede-cf34-4d27-aea6-198f3d5e6ff3
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

