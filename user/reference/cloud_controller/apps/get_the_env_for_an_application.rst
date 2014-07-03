
Get the env for an Application
------------------------------


GET /v2/apps/:guid/env
~~~~~~~~~~~~~~~~~~~~~~

Get the environment variables for an Application using the guid

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+----------------------+---------+--------------+----------------+
| Name | Description          | Default | Valid Values | Example Values |
|      |                      |         |              |                |
+======+======================+=========+==============+================+
| guid | The guid of the app. |         |              |                |
|      |                      |         |              |                |
+------+----------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ2IiwiZW1haWwiOiJlbWFpbC00MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM0fQ.sXJj1VON8f3dpfAmeDA9CQ494c83e3iUtf5Xf1f58Dk
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/apps/5b0e4c08-d1ae-4a95-9a9e-998d06036e80/env


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/apps/5b0e4c08-d1ae-4a95-9a9e-998d06036e80/env" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ2IiwiZW1haWwiOiJlbWFpbC00MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM0fQ.sXJj1VON8f3dpfAmeDA9CQ494c83e3iUtf5Xf1f58Dk" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 0061eadf-157a-4347-9d71-edcb528324be
  Content-Length: 81
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"system_env_json":{"VCAP_SERVICES":{}},"environment_json":{"env_var":"env_val"}}

