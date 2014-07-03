
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM0IiwiZW1haWwiOiJlbWFpbC0yOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMxfQ.EavnstKZ8R0uwbrmsWzFikGVL2KOaAjgMFe1fqbgBWY
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

  {"name":"exmaple.com","owning_organization_guid":"d67c2bfc-9189-4dec-89ae-af3b5ef919dc"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains" -d '{"name":"exmaple.com","owning_organization_guid":"d67c2bfc-9189-4dec-89ae-af3b5ef919dc"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTM0IiwiZW1haWwiOiJlbWFpbC0yOEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMxfQ.EavnstKZ8R0uwbrmsWzFikGVL2KOaAjgMFe1fqbgBWY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/private_domains/102883f0-b540-405a-b1ed-95476889ac19
  X-VCAP-Request-ID: d3ca1b5e-f02e-4ca9-965d-ba59aa789fdf
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
      "guid": "102883f0-b540-405a-b1ed-95476889ac19",
      "url": "/v2/private_domains/102883f0-b540-405a-b1ed-95476889ac19",
      "created_at": "2014-06-19T17:18:51-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "exmaple.com",
      "owning_organization_guid": "d67c2bfc-9189-4dec-89ae-af3b5ef919dc",
      "owning_organization_url": "/v2/organizations/d67c2bfc-9189-4dec-89ae-af3b5ef919dc"
    }
  }

