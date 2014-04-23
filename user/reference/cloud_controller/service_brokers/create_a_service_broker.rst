
Create a service broker
-----------------------


POST /v2/service_brokers
~~~~~~~~~~~~~~~~~~~~~~~~


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


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI0IiwiZW1haWwiOiJlbWFpbC0yNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.WRi-NWdQPxzJFhqgbukcz3qGP_DNW00d2bmb0x_2bcE
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/service_brokers


Body
^^^^

::

  {
    "name": "service-broker-name",
    "broker_url": "https://broker.example.com",
    "auth_username": "admin",
    "auth_password": "secretpassw0rd"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_brokers" -d '{
    "name": "service-broker-name",
    "broker_url": "https://broker.example.com",
    "auth_username": "admin",
    "auth_password": "secretpassw0rd"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI0IiwiZW1haWwiOiJlbWFpbC0yNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.WRi-NWdQPxzJFhqgbukcz3qGP_DNW00d2bmb0x_2bcE" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/service_brokers/5e427238-f65b-4945-bc1a-956dc2c26fe1
  X-VCAP-Request-ID: 48105450-4e00-4e4c-a1ad-f758c15f7e8c
  Content-Length: 347
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
      "guid": "5e427238-f65b-4945-bc1a-956dc2c26fe1",
      "created_at": "2014-04-07T11:18:59-07:00",
      "updated_at": null,
      "url": "/v2/service_brokers/5e427238-f65b-4945-bc1a-956dc2c26fe1"
    },
    "entity": {
      "name": "service-broker-name",
      "broker_url": "https://broker.example.com",
      "auth_username": "admin"
    }
  }

