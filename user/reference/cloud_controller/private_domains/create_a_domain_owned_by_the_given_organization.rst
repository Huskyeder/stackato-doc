
Create a domain owned by the given organization
-----------------------------------------------


POST /v2/private_domains
~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| Name                     | Description                                                                    | Default | Valid Values | Example Values    |
|                          |                                                                                |         |              |                   |
+==========================+================================================================================+=========+==============+===================+
| guid                     | The guid of the domain.                                                        |         |              |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| name                     | The name of the domain.                                                        |         |              | - example.com     |
|                          |                                                                                |         |              | - foo.example.com |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+
| owning_organization_guid | The organization that owns the domain. If not specified, the domain is shared. |         |              |                   |
|                          |                                                                                |         |              |                   |
+--------------------------+--------------------------------------------------------------------------------+---------+--------------+-------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ1IiwiZW1haWwiOiJlbWFpbC00NUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.595YsHrCWqSyF21pK9AZ_RPOyT6q4QEePPwmxnYvCAo
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/private_domains


Body
^^^^

::

  {"name":"exmaple.com","owning_organization_guid":"fe6810fc-d480-4b73-b969-4080eb81447d"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains" -d '{"name":"exmaple.com","owning_organization_guid":"fe6810fc-d480-4b73-b969-4080eb81447d"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ1IiwiZW1haWwiOiJlbWFpbC00NUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.595YsHrCWqSyF21pK9AZ_RPOyT6q4QEePPwmxnYvCAo" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/private_domains/a245315e-0f58-4230-86c4-58cf50c07a01
  X-VCAP-Request-ID: 1eb96fc9-98f4-4bce-abd5-d42adfea8dfd
  Content-Length: 422
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
      "guid": "a245315e-0f58-4230-86c4-58cf50c07a01",
      "url": "/v2/private_domains/a245315e-0f58-4230-86c4-58cf50c07a01",
      "created_at": "2014-04-07T11:19:12-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "exmaple.com",
      "owning_organization_guid": "fe6810fc-d480-4b73-b969-4080eb81447d",
      "owning_organization_url": "/v2/organizations/fe6810fc-d480-4b73-b969-4080eb81447d"
    }
  }

