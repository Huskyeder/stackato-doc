
Migrate instances from one plan to another plan (experimental)
--------------------------------------------------------------


PUT /v2/service_plans/:service_plan_guid/service_instances
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Move all service instances for the service plan from the URL to the service plan in the request body

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------------------------+---------+--------------+----------------------------------------+
| Name              | Description                                            | Default | Valid Values | Example Values                         |
|                   |                                                        |         |              |                                        |
+===================+========================================================+=========+==============+========================================+
| service_plan_guid | The guid of the plan to move the existing instances to |         |              | - 6c4bd80f-4593-41d1-a2c9-b20cb65ec76e |
|                   |                                                        |         |              |                                        |
+-------------------+--------------------------------------------------------+---------+--------------+----------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU5IiwiZW1haWwiOiJlbWFpbC01M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.82gvzP7mUbzC_53MTWcfhSy3UJ1TMLcB-tfertbHbNc
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/service_plans/9fe8e1d3-8da0-4513-b7df-5bd83fecda53/service_instances


Body
^^^^

::

  {"service_plan_guid":"4e9686f4-8116-4e34-9337-a679d6d79067"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_plans/9fe8e1d3-8da0-4513-b7df-5bd83fecda53/service_instances" -d '{"service_plan_guid":"4e9686f4-8116-4e34-9337-a679d6d79067"}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTU5IiwiZW1haWwiOiJlbWFpbC01M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM3fQ.82gvzP7mUbzC_53MTWcfhSy3UJ1TMLcB-tfertbHbNc" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 5353a434-faaf-47ef-b673-176f1e36a134
  Content-Length: 19
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"changed_count":1}

