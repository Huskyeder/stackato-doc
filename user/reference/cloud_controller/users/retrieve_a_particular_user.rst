
Retrieve a Particular User
--------------------------


GET /v2/users/:guid
~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| Name                              | Description                                                     | Default | Valid Values | Example Values |
|                                   |                                                                 |         |              |                |
+===================================+=================================================================+=========+==============+================+
| guid                              | The guid of the user.                                           |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| default_space_guid                | The guid of the default space for apps created by this user.    |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| admin                             | Whether the user is an admin (Use UAA instead).                 |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| default_space_url                 | The url of the default space for apps created by the user.      |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| spaces_url                        | The url of the spaces this user is a member of.                 |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| organizations_url                 | The url of the organizations this user in a member of.          |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| managed_organizations_url         | The url of the organizations this user in a manager of.         |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| billing_managed_organizations_url | The url of the organizations this user in a billing manager of. |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| audited_organizations_url         | The url of the organizations this user in a auditor of.         |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| managed_spaces_url                | The url of the spaces this user in a manager of.                |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+
| audited_spaces_url                | The url of the spaces this user in a auditor of.                |         |              |                |
|                                   |                                                                 |         |              |                |
+-----------------------------------+-----------------------------------------------------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTg3IiwiZW1haWwiOiJlbWFpbC03MkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.z2R-bF6Y14VNCU2hVclVEZRhfD3llMYG54YRu44b3to
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/users/uaa-id-84


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/users/uaa-id-84" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTg3IiwiZW1haWwiOiJlbWFpbC03MkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.z2R-bF6Y14VNCU2hVclVEZRhfD3llMYG54YRu44b3to" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 501bd456-81e9-4c34-92ff-b78f7731d200
  Content-Length: 810
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
      "guid": "uaa-id-84",
      "url": "/v2/users/uaa-id-84",
      "created_at": "2014-06-19T17:19:01-07:00",
      "updated_at": null,
      "logged_in_at": null
    },
    "entity": {
      "admin": false,
      "active": false,
      "default_space_guid": null,
      "guid": "uaa-id-84",
      "username": "testuser",
      "spaces_url": "/v2/users/uaa-id-84/spaces",
      "organizations_url": "/v2/users/uaa-id-84/organizations",
      "managed_organizations_url": "/v2/users/uaa-id-84/managed_organizations",
      "billing_managed_organizations_url": "/v2/users/uaa-id-84/billing_managed_organizations",
      "audited_organizations_url": "/v2/users/uaa-id-84/audited_organizations",
      "managed_spaces_url": "/v2/users/uaa-id-84/managed_spaces",
      "audited_spaces_url": "/v2/users/uaa-id-84/audited_spaces"
    }
  }

