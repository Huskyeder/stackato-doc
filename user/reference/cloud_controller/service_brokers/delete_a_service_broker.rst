
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkyIiwiZW1haWwiOiJlbWFpbC03NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.ZWW0dUtCd5kTS_aRJnUjWpBMex2pbYf5g2DW6_Sxhxg
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/service_brokers/743a9f37-e6e5-47f6-b558-1f73babcd27b


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_brokers/743a9f37-e6e5-47f6-b558-1f73babcd27b" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkyIiwiZW1haWwiOiJlbWFpbC03NEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.ZWW0dUtCd5kTS_aRJnUjWpBMex2pbYf5g2DW6_Sxhxg" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 6cb32d87-b179-4291-be76-484b216f7a76
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

