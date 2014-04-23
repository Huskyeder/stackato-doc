
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcwIiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU5fQ.FDpyPHtUSFFAZSvttCItWDysIdE36wWruEBD9Iciz3Q
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/users/uaa-id-67


Body
^^^^

::

  {"default_space_guid":"0e6374ee-ad11-42ce-b518-2f84ebe155a8"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/users/uaa-id-67" -d '{"default_space_guid":"0e6374ee-ad11-42ce-b518-2f84ebe155a8"}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTcwIiwiZW1haWwiOiJlbWFpbC01OEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTU5fQ.FDpyPHtUSFFAZSvttCItWDysIdE36wWruEBD9Iciz3Q" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 72a45adb-c20b-4ab9-8a63-c5be3b78d262
  Content-Length: 917
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
      "guid": "uaa-id-67",
      "url": "/v2/users/uaa-id-67",
      "created_at": "2014-04-07T11:19:19-07:00",
      "updated_at": "2014-04-07T11:19:19-07:00"
    },
    "entity": {
      "admin": false,
      "active": false,
      "default_space_guid": "0e6374ee-ad11-42ce-b518-2f84ebe155a8",
      "guid": "uaa-id-67",
      "username": "testuser",
      "default_space_url": "/v2/spaces/0e6374ee-ad11-42ce-b518-2f84ebe155a8",
      "spaces_url": "/v2/users/uaa-id-67/spaces",
      "organizations_url": "/v2/users/uaa-id-67/organizations",
      "managed_organizations_url": "/v2/users/uaa-id-67/managed_organizations",
      "billing_managed_organizations_url": "/v2/users/uaa-id-67/billing_managed_organizations",
      "audited_organizations_url": "/v2/users/uaa-id-67/audited_organizations",
      "managed_spaces_url": "/v2/users/uaa-id-67/managed_spaces",
      "audited_spaces_url": "/v2/users/uaa-id-67/audited_spaces"
    }
  }

