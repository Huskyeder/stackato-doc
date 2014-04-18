
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMxIiwiZW1haWwiOiJlbWFpbC0zMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.nbt_fM4Mp0EBTRmchPhlOLk-SW8upNuyshv2id7dpIk
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/service_auth_tokens/e120ecb8-d935-48f0-9576-319b38123ecc


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/service_auth_tokens/e120ecb8-d935-48f0-9576-319b38123ecc" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMxIiwiZW1haWwiOiJlbWFpbC0zMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQzfQ.nbt_fM4Mp0EBTRmchPhlOLk-SW8upNuyshv2id7dpIk" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 4228567c-932f-47b0-8a8d-e403d5c78a3e
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
      "guid": "e120ecb8-d935-48f0-9576-319b38123ecc",
      "url": "/v2/service_auth_tokens/e120ecb8-d935-48f0-9576-319b38123ecc",
      "created_at": "2014-04-07T11:19:03-07:00",
      "updated_at": null
    },
    "entity": {
      "label": "label-11",
      "provider": "provider-11"
    }
  }

