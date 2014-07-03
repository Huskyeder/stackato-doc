
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTk0IiwiZW1haWwiOiJlbWFpbC03NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.uNRjeLOYkdD5_FzGRoAt1Epc0eyLKMvXJyd3qhilbXg
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTk0IiwiZW1haWwiOiJlbWFpbC03NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.uNRjeLOYkdD5_FzGRoAt1Epc0eyLKMvXJyd3qhilbXg" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/service_brokers/a93f0181-333d-436f-892b-74a6b69286eb
  X-VCAP-Request-ID: c63fc9d0-1c7a-42d2-bf8d-3d3d3755f12f
  Content-Length: 347
  X-Content-Type-Options: nosniff
  X-Cf-Warnings: Warning%3A+Warning+message+may+go+here.


Status
^^^^^^

::

  201 Created


Body
^^^^

::

  {
    "metadata": {
      "guid": "a93f0181-333d-436f-892b-74a6b69286eb",
      "created_at": "2014-06-19T17:19:02-07:00",
      "updated_at": null,
      "url": "/v2/service_brokers/a93f0181-333d-436f-892b-74a6b69286eb"
    },
    "entity": {
      "name": "service-broker-name",
      "broker_url": "https://broker.example.com",
      "auth_username": "admin"
    }
  }

