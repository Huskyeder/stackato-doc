
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMxIiwiZW1haWwiOiJlbWFpbC0yNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.lw8rp_gPVTbpZQae7yJLpFai-psN9_zldrS1cLSz1Ao
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/private_domains/de555801-1d2d-4918-b876-8d3d56477d42


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains/de555801-1d2d-4918-b876-8d3d56477d42" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMxIiwiZW1haWwiOiJlbWFpbC0yNUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.lw8rp_gPVTbpZQae7yJLpFai-psN9_zldrS1cLSz1Ao" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 6c8e6fe1-a3cd-43a9-83f5-e58fdb62293c
  Content-Length: 431
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
      "guid": "de555801-1d2d-4918-b876-8d3d56477d42",
      "url": "/v2/private_domains/de555801-1d2d-4918-b876-8d3d56477d42",
      "created_at": "2014-06-19T17:18:50-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-2.example.com",
      "owning_organization_guid": "e745c8b4-4eb0-478c-9305-8a5a6682a391",
      "owning_organization_url": "/v2/organizations/e745c8b4-4eb0-478c-9305-8a5a6682a391"
    }
  }

