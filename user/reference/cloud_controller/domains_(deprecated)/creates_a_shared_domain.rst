
creates a shared domain
-----------------------


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYiLCJlbWFpbCI6ImVtYWlsLTZAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.9LIVocXPOPZx3KnQHVoDMIyLb5Ev_ygHp3Uzuq7HMVY
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

  {
    "name": "example.com",
    "wildcard": true
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains" -d '{
    "name": "example.com",
    "wildcard": true
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTYiLCJlbWFpbCI6ImVtYWlsLTZAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzM30.9LIVocXPOPZx3KnQHVoDMIyLb5Ev_ygHp3Uzuq7HMVY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/domains/4f7ef27d-7108-4fb2-91a1-385fe2088776
  X-VCAP-Request-ID: dbabc33e-7ca4-4e21-bb00-d561446c2e87
  X-Cf-Warning: Endpoint deprecated
  Content-Length: 291
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
      "guid": "4f7ef27d-7108-4fb2-91a1-385fe2088776",
      "url": "/v2/domains/4f7ef27d-7108-4fb2-91a1-385fe2088776",
      "created_at": "2014-04-07T11:18:53-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "example.com",
      "owning_organization_guid": null
    }
  }

