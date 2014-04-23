
Create a shared domain
----------------------


POST /v2/shared_domains
~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+-------------------------+---------+--------------+-------------------+
| Name | Description             | Default | Valid Values | Example Values    |
|      |                         |         |              |                   |
+======+=========================+=========+==============+===================+
| guid | The guid of the domain. |         |              |                   |
|      |                         |         |              |                   |
+------+-------------------------+---------+--------------+-------------------+
| name | The name of the domain. |         |              | - example.com     |
|      |                         |         |              | - foo.example.com |
|      |                         |         |              |                   |
+------+-------------------------+---------+--------------+-------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIiLCJlbWFpbCI6ImVtYWlsLTJAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.nme1eh9e6aVkLcyzsgceJZfoZRDz0__ir4HJD1Aiszs
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/shared_domains


Body
^^^^

::

  {
    "name": "example.com"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains" -d '{
    "name": "example.com"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTIiLCJlbWFpbCI6ImVtYWlsLTJAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.nme1eh9e6aVkLcyzsgceJZfoZRDz0__ir4HJD1Aiszs" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/shared_domains/94a61b85-7131-419c-b84b-cb60f5e1a1f1
  X-VCAP-Request-ID: b6d45ea8-fe9a-46e7-b309-6123d25a8395
  Content-Length: 260
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
      "guid": "94a61b85-7131-419c-b84b-cb60f5e1a1f1",
      "url": "/v2/shared_domains/94a61b85-7131-419c-b84b-cb60f5e1a1f1",
      "created_at": "2014-04-07T11:18:51-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "example.com"
    }
  }

