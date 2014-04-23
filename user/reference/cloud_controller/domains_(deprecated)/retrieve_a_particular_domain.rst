
Retrieve a Particular Domain
----------------------------


GET /v2/domains/:guid
~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTgiLCJlbWFpbCI6ImVtYWlsLThAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.gK2FHCm8f5yDgXTCqnUhr6wwVThxYNMBXKh99xqXprI
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/domains/b5f80729-e7b4-4949-a250-548a7c956045


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains/b5f80729-e7b4-4949-a250-548a7c956045" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTgiLCJlbWFpbCI6ImVtYWlsLThAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.gK2FHCm8f5yDgXTCqnUhr6wwVThxYNMBXKh99xqXprI" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 032125b1-ec5c-4903-b3b2-0643c33705a4
  X-Cf-Warning: Endpoint deprecated
  Content-Length: 493
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
      "guid": "b5f80729-e7b4-4949-a250-548a7c956045",
      "url": "/v2/domains/b5f80729-e7b4-4949-a250-548a7c956045",
      "created_at": "2014-04-07T11:18:53-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-25.com",
      "owning_organization_guid": "fb2b41b8-6a51-4407-b419-6561b13e8a40",
      "owning_organization_url": "/v2/organizations/fb2b41b8-6a51-4407-b419-6561b13e8a40",
      "spaces_url": "/v2/domains/b5f80729-e7b4-4949-a250-548a7c956045/spaces"
    }
  }

