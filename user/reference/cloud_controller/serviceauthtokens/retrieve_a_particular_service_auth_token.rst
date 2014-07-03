
Retrieve a Particular Service_auth_token
----------------------------------------


GET /v2/service_auth_tokens/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------+-----------------------------------------------+---------+--------------+----------------+
| Name     | Description                                   | Default | Valid Values | Example Values |
|          |                                               |         |              |                |
+==========+===============================================+=========+==============+================+
| guid     | The guid of the service auth token.           |         |              |                |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| label    | Human readable name for the auth token        |         |              | - Nic-Token    |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| provider | Human readable name of service provider       |         |              | - Face-Offer   |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+
| token    | The secret auth token used for authenticating |         |              |                |
|          |                                               |         |              |                |
+----------+-----------------------------------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM4IiwiZW1haWwiOiJlbWFpbC0zMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMyfQ.jiSSirtho9nN6NlCz4q247Lc7kxMOV6Zpv6utlQMDw4
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_auth_tokens/c88374d8-dbdf-4253-aa09-f2cbd7279695


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_auth_tokens/c88374d8-dbdf-4253-aa09-f2cbd7279695" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM4IiwiZW1haWwiOiJlbWFpbC0zMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMyfQ.jiSSirtho9nN6NlCz4q247Lc7kxMOV6Zpv6utlQMDw4" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 41f4e827-1089-4333-9562-b192fad26208
  Content-Length: 294
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
      "guid": "c88374d8-dbdf-4253-aa09-f2cbd7279695",
      "url": "/v2/service_auth_tokens/c88374d8-dbdf-4253-aa09-f2cbd7279695",
      "created_at": "2014-06-19T17:18:52-07:00",
      "updated_at": null
    },
    "entity": {
      "label": "label-12",
      "provider": "provider-12"
    }
  }

