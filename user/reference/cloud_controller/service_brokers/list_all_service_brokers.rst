
List all service brokers
------------------------


GET /v2/service_brokers
~~~~~~~~~~~~~~~~~~~~~~~


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


+------+-----------------------------------------------------------------+
| Name | Description                                                     |
|      |                                                                 |
+======+=================================================================+
| q    | Parameters used to filter the result set. Valid filters: 'name' |
|      |                                                                 |
+------+-----------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkzIiwiZW1haWwiOiJlbWFpbC03NUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.v97xAE2-wLbeqr4N7nL1IVjTeQKaa9VGWWP1d5nRAzc
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_brokers


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_brokers" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkzIiwiZW1haWwiOiJlbWFpbC03NUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQyfQ.v97xAE2-wLbeqr4N7nL1IVjTeQKaa9VGWWP1d5nRAzc" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 05fa4239-066b-48c5-9cd8-3e3bc89741f7
  Content-Length: 941
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"total_results":3,"total_pages":1,"prev_url":null,"next_url":null,"resources":[{"metadata":{"guid":"e06e74c9-23a7-4a38-a690-e0698f83d6d5","created_at":"2014-06-19T17:19:01-07:00","updated_at":null,"url":"/v2/service_brokers/e06e74c9-23a7-4a38-a690-e0698f83d6d5"},"entity":{"name":"name-500","broker_url":"https://foo.com/url-22","auth_username":"auth_username-9"}},{"metadata":{"guid":"7785c97e-1b99-4c28-80f9-5042a17a3cdb","created_at":"2014-06-19T17:19:01-07:00","updated_at":null,"url":"/v2/service_brokers/7785c97e-1b99-4c28-80f9-5042a17a3cdb"},"entity":{"name":"name-501","broker_url":"https://foo.com/url-23","auth_username":"auth_username-10"}},{"metadata":{"guid":"f73f7fef-671a-43e1-81ef-cfb551c01e7b","created_at":"2014-06-19T17:19:01-07:00","updated_at":null,"url":"/v2/service_brokers/f73f7fef-671a-43e1-81ef-cfb551c01e7b"},"entity":{"name":"name-502","broker_url":"https://foo.com/url-24","auth_username":"auth_username-11"}}]}

