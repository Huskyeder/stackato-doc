
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIyIiwiZW1haWwiOiJlbWFpbC0yMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.9Kpk31s_DKGWtxlLMy8cIY6AqtPjm9kEQQHPuBRrbrg
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
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIyIiwiZW1haWwiOiJlbWFpbC0yMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM5fQ.9Kpk31s_DKGWtxlLMy8cIY6AqtPjm9kEQQHPuBRrbrg" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 69ab2c28-5742-46e5-bbdc-64458815df88
  Content-Length: 933
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"total_results":3,"total_pages":1,"prev_url":null,"next_url":null,"resources":[{"metadata":{"guid":"b4e9ec99-5154-4817-a971-52397519f30c","created_at":"2014-04-07T11:18:59-07:00","updated_at":null,"url":"/v2/service_brokers/b4e9ec99-5154-4817-a971-52397519f30c"},"entity":{"name":"name-26","broker_url":"https://foo.com/url-1","auth_username":"auth_username-1"}},{"metadata":{"guid":"1b399612-4a45-4625-bfeb-7246042e08a1","created_at":"2014-04-07T11:18:59-07:00","updated_at":null,"url":"/v2/service_brokers/1b399612-4a45-4625-bfeb-7246042e08a1"},"entity":{"name":"name-27","broker_url":"https://foo.com/url-2","auth_username":"auth_username-2"}},{"metadata":{"guid":"46eaf5b3-dddc-47a3-a2e7-7bde103f98dd","created_at":"2014-04-07T11:18:59-07:00","updated_at":null,"url":"/v2/service_brokers/46eaf5b3-dddc-47a3-a2e7-7bde103f98dd"},"entity":{"name":"name-28","broker_url":"https://foo.com/url-3","auth_username":"auth_username-3"}}]}

