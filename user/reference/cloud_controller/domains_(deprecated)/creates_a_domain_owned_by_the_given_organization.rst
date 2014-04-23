
creates a domain owned by the given organization
------------------------------------------------


POST /v2/domains
~~~~~~~~~~~~~~~~


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
| wildcard                 | Allow routes with non-empty hosts                                              |         | - true       |                   |
|                          |                                                                                |         | - false      |                   |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTciLCJlbWFpbCI6ImVtYWlsLTdAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.Uc51AqUhIaRhHnY-WTL-CPWz1tmToEYYbsHk97vyeNk
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/domains


Body
^^^^

::

  {"name":"exmaple.com","wildcard":true,"owning_organization_guid":"298aea61-35cc-40ae-9670-70bd1375782a"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains" -d '{"name":"exmaple.com","wildcard":true,"owning_organization_guid":"298aea61-35cc-40ae-9670-70bd1375782a"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTciLCJlbWFpbCI6ImVtYWlsLTdAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.Uc51AqUhIaRhHnY-WTL-CPWz1tmToEYYbsHk97vyeNk" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/domains/fde694ea-3efb-47ce-a308-3ef55546d57c
  X-VCAP-Request-ID: 41887c36-206d-4d83-bdda-b76e259ddc79
  X-Cf-Warning: Endpoint deprecated
  Content-Length: 414
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
      "guid": "fde694ea-3efb-47ce-a308-3ef55546d57c",
      "url": "/v2/domains/fde694ea-3efb-47ce-a308-3ef55546d57c",
      "created_at": "2014-04-07T11:18:53-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "exmaple.com",
      "owning_organization_guid": "298aea61-35cc-40ae-9670-70bd1375782a",
      "owning_organization_url": "/v2/organizations/298aea61-35cc-40ae-9670-70bd1375782a"
    }
  }

