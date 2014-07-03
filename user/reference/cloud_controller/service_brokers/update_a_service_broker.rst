
Update a service broker
-----------------------


PUT /v2/service_brokers/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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
| guid | The guid of the service broker being updated. |
|      |                                               |
+------+-----------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTk1IiwiZW1haWwiOiJlbWFpbC03N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.UES9CQdpfPle-izL4G8w0-xZFaGeqT_wnshYRS6dvew
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/service_brokers/0c0bd479-4fff-403f-9c46-47919324c684


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

  curl "https://api.[your-domain.com]/v2/service_brokers/0c0bd479-4fff-403f-9c46-47919324c684" -d '{
    "name": "service-broker-name",
    "broker_url": "https://broker.example.com",
    "auth_username": "admin",
    "auth_password": "secretpassw0rd"
  }' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTk1IiwiZW1haWwiOiJlbWFpbC03N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.UES9CQdpfPle-izL4G8w0-xZFaGeqT_wnshYRS6dvew" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: d14535b6-468c-42dd-92d1-d130d8dfd395
  Content-Length: 370
  X-Content-Type-Options: nosniff
  X-Cf-Warnings: Warning%3A+Warning+message+may+go+here.


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "metadata": {
      "guid": "0c0bd479-4fff-403f-9c46-47919324c684",
      "created_at": "2014-06-19T17:19:02-07:00",
      "updated_at": "2014-06-19T17:19:02-07:00",
      "url": "/v2/service_brokers/0c0bd479-4fff-403f-9c46-47919324c684"
    },
    "entity": {
      "name": "service-broker-name",
      "broker_url": "https://broker.example.com",
      "auth_username": "admin"
    }
  }

