
Retrieve a Particular Private_domain
------------------------------------


GET /v2/private_domains/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ2IiwiZW1haWwiOiJlbWFpbC00NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.9UhOWHchd0kgvBXIIct9-mQCC58nqp-flopC8lTAAWg
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/private_domains/5771078f-7748-459e-bb10-91482c4fb555


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains/5771078f-7748-459e-bb10-91482c4fb555" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ2IiwiZW1haWwiOiJlbWFpbC00NkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.9UhOWHchd0kgvBXIIct9-mQCC58nqp-flopC8lTAAWg" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 6bde0f41-00f2-41dd-9c0f-b101acd7deef
  Content-Length: 424
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
      "guid": "5771078f-7748-459e-bb10-91482c4fb555",
      "url": "/v2/private_domains/5771078f-7748-459e-bb10-91482c4fb555",
      "created_at": "2014-04-07T11:19:12-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-39.com",
      "owning_organization_guid": "cb35753f-8679-432c-8d4f-689e3ced156e",
      "owning_organization_url": "/v2/organizations/cb35753f-8679-432c-8d4f-689e3ced156e"
    }
  }

