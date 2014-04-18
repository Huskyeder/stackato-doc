
Retrieve a Particular Shared_domain
-----------------------------------


GET /v2/shared_domains/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMiLCJlbWFpbCI6ImVtYWlsLTNAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.lsFPKpbS_zBD7TAzqx4GFuphEpzlsZZe5qQq6nvIBhQ
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/shared_domains/13395b7a-a3a0-4177-acf2-44b98a9b8209


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains/13395b7a-a3a0-4177-acf2-44b98a9b8209" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMiLCJlbWFpbCI6ImVtYWlsLTNAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.lsFPKpbS_zBD7TAzqx4GFuphEpzlsZZe5qQq6nvIBhQ" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 20ef882e-7a24-40f4-a3fd-aadbcaeeb020
  Content-Length: 261
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
      "guid": "13395b7a-a3a0-4177-acf2-44b98a9b8209",
      "url": "/v2/shared_domains/13395b7a-a3a0-4177-acf2-44b98a9b8209",
      "created_at": "2014-04-07T11:18:51-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "domain-7.com"
    }
  }

