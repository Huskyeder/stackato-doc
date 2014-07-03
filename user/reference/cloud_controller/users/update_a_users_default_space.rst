
Update a User's default space
-----------------------------


PUT /v2/users/:guid
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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+--------------------------------+
| Name | Description                    |
|      |                                |
+======+================================+
| guid | The guid for the user to alter |
|      |                                |
+------+--------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkxIiwiZW1haWwiOiJlbWFpbC03M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.sa_PTgPoFvbG5mOhbqu6guaBuYRtW1nGJcJaMA_GX9g
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/users/uaa-id-88


Body
^^^^

::

  {"default_space_guid":"abd63229-4356-46cf-b0b6-83bcf04bdff7"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/users/uaa-id-88" -d '{"default_space_guid":"abd63229-4356-46cf-b0b6-83bcf04bdff7"}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTkxIiwiZW1haWwiOiJlbWFpbC03M0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQxfQ.sa_PTgPoFvbG5mOhbqu6guaBuYRtW1nGJcJaMA_GX9g" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: eeb9b9fb-9084-40c4-936f-a1645a354ff2
  Content-Length: 943
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
      "guid": "uaa-id-88",
      "url": "/v2/users/uaa-id-88",
      "created_at": "2014-06-19T17:19:01-07:00",
      "updated_at": "2014-06-19T17:19:01-07:00",
      "logged_in_at": null
    },
    "entity": {
      "admin": false,
      "active": false,
      "default_space_guid": "abd63229-4356-46cf-b0b6-83bcf04bdff7",
      "guid": "uaa-id-88",
      "username": "testuser",
      "default_space_url": "/v2/spaces/abd63229-4356-46cf-b0b6-83bcf04bdff7",
      "spaces_url": "/v2/users/uaa-id-88/spaces",
      "organizations_url": "/v2/users/uaa-id-88/organizations",
      "managed_organizations_url": "/v2/users/uaa-id-88/managed_organizations",
      "billing_managed_organizations_url": "/v2/users/uaa-id-88/billing_managed_organizations",
      "audited_organizations_url": "/v2/users/uaa-id-88/audited_organizations",
      "managed_spaces_url": "/v2/users/uaa-id-88/managed_spaces",
      "audited_spaces_url": "/v2/users/uaa-id-88/audited_spaces"
    }
  }

