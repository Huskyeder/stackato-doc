
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIzIiwiZW1haWwiOiJlbWFpbC0yM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.2aN8HyWFL-awx9Pz-80AI-vJERy3A_uezVErMbLA0WA
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/service_brokers/262e61e5-334a-4fe2-a636-ce9a49a663a9


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

  curl "https://api.[your-domain.com]/v2/service_brokers/262e61e5-334a-4fe2-a636-ce9a49a663a9" -d '{
    "name": "service-broker-name",
    "broker_url": "https://broker.example.com",
    "auth_username": "admin",
    "auth_password": "secretpassw0rd"
  }' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIzIiwiZW1haWwiOiJlbWFpbC0yM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.2aN8HyWFL-awx9Pz-80AI-vJERy3A_uezVErMbLA0WA" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 77bb3b20-ca40-44bb-8ab8-22481f623938
  Content-Length: 370
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "metadata": {
      "guid": "262e61e5-334a-4fe2-a636-ce9a49a663a9",
      "created_at": "2014-04-07T11:18:59-07:00",
      "updated_at": "2014-04-07T11:18:59-07:00",
      "url": "/v2/service_brokers/262e61e5-334a-4fe2-a636-ce9a49a663a9"
    },
    "entity": {
      "name": "service-broker-name",
      "broker_url": "https://broker.example.com",
      "auth_username": "admin"
    }
  }

