
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwNSIsImVtYWlsIjoiZW1haWwtODdAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.xt8zq0u_g3FWQiZoPtFf6GAvOmV85CgL-KZwhWabFw8
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

  {"name":"exmaple.com","wildcard":true,"owning_organization_guid":"f292255b-04e6-4047-a413-dde77323c25a"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains" -d '{"name":"exmaple.com","wildcard":true,"owning_organization_guid":"f292255b-04e6-4047-a413-dde77323c25a"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwNSIsImVtYWlsIjoiZW1haWwtODdAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.xt8zq0u_g3FWQiZoPtFf6GAvOmV85CgL-KZwhWabFw8" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/domains/df94b92c-9551-464e-8d72-ab719aaa3269
  X-VCAP-Request-ID: 222cd95b-b86a-479a-bf8e-9208902ba406
  X-Cf-Warnings: Endpoint+deprecated
  Content-Length: 491
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
      "guid": "df94b92c-9551-464e-8d72-ab719aaa3269",
      "url": "/v2/domains/df94b92c-9551-464e-8d72-ab719aaa3269",
      "created_at": "2014-06-19T17:19:05-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "exmaple.com",
      "owning_organization_guid": "f292255b-04e6-4047-a413-dde77323c25a",
      "owning_organization_url": "/v2/organizations/f292255b-04e6-4047-a413-dde77323c25a",
      "spaces_url": "/v2/domains/df94b92c-9551-464e-8d72-ab719aaa3269/spaces"
    }
  }

