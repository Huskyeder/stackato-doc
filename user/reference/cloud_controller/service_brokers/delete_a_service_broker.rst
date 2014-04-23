
Delete a service broker
-----------------------


DELETE /v2/service_brokers/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+---------------+---------------------------------------------------------------------+---------+--------------+------------------------------+
| Name          | Description                                                         | Default | Valid Values | Example Values               |
|               |                                                                     |         |              |                              |
+===============+=====================================================================+=========+==============+==============================+
| name          | The name of the service broker.                                     |         |              | - service-broker-name        |
|               |                                                                     |         |              |                              |
+---------------+---------------------------------------------------------------------+---------+--------------+------------------------------+
| broker_url    | The URL of the service broker.                                      |         |              | - https://broker.example.com |
|               |                                                                     |         |              |                              |
+---------------+---------------------------------------------------------------------+---------+--------------+------------------------------+
| auth_username | The username with which to authenticate against the service broker. |         |              | - admin                      |
|               |                                                                     |         |              |                              |
+---------------+---------------------------------------------------------------------+---------+--------------+------------------------------+
| auth_password | The password with which to authenticate against the service broker. |         |              | - secretpassw0rd             |
|               |                                                                     |         |              |                              |
+---------------+---------------------------------------------------------------------+---------+--------------+------------------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+-----------------------------------------------+
| Name | Description                                   |
|      |                                               |
+======+===============================================+
| guid | The guid of the service broker being deleted. |
|      |                                               |
+------+-----------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI1IiwiZW1haWwiOiJlbWFpbC0yNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.hx9qj01_bIGwmSBDee9yyrad73z-Qva8_4w-gy1bkNY
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/service_brokers/fff8489b-b57c-4951-825c-3ae8f172455b


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_brokers/fff8489b-b57c-4951-825c-3ae8f172455b" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI1IiwiZW1haWwiOiJlbWFpbC0yNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.hx9qj01_bIGwmSBDee9yyrad73z-Qva8_4w-gy1bkNY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: af9cbca0-6968-4266-8c2e-d5f8ee610e14
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

