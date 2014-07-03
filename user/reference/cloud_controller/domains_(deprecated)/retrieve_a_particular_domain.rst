
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwNCIsImVtYWlsIjoiZW1haWwtODZAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.iGbxpP4jWVyV8KMP4kPh22PlParysFrK0AgalxO9a8E
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/domains/ed91a81a-be92-4eda-8708-afab3cf602b9


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/domains/ed91a81a-be92-4eda-8708-afab3cf602b9" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTEwNCIsImVtYWlsIjoiZW1haWwtODZAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0NX0.iGbxpP4jWVyV8KMP4kPh22PlParysFrK0AgalxO9a8E" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 49d6a209-f137-442f-abf7-f341963f724d
  X-Cf-Warnings: Endpoint+deprecated
  Content-Length: 501
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
      "guid": "ed91a81a-be92-4eda-8708-afab3cf602b9",
      "url": "/v2/domains/ed91a81a-be92-4eda-8708-afab3cf602b9",
      "created_at": "2014-06-19T17:19:05-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-40.example.com",
      "owning_organization_guid": "ebdeb3c4-f336-45d0-8ace-4a6ef58e82e4",
      "owning_organization_url": "/v2/organizations/ebdeb3c4-f336-45d0-8ace-4a6ef58e82e4",
      "spaces_url": "/v2/domains/ed91a81a-be92-4eda-8708-afab3cf602b9/spaces"
    }
  }

