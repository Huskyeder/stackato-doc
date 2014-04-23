
Delete a Particular Shared_domain
---------------------------------


DELETE /v2/shared_domains/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------+-----------------------------------------------------------------------+
| Name  | Description                                                           |
|       |                                                                       |
+=======+=======================================================================+
| async | Will run the delete request in a background job. Recommended: 'true'. |
|       |                                                                       |
+-------+-----------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQiLCJlbWFpbCI6ImVtYWlsLTRAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.FC_lIMSqmKK6zM-darGlLy0djDDRVntE_CxHOJiO2z0
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/shared_domains/283e4352-d7a1-4330-a6d9-fca279bcee74


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/shared_domains/283e4352-d7a1-4330-a6d9-fca279bcee74" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQiLCJlbWFpbCI6ImVtYWlsLTRAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTM5NzQ5OTUzMX0.FC_lIMSqmKK6zM-darGlLy0djDDRVntE_CxHOJiO2z0" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: d7dd18bd-159a-4d3a-aae6-cca37ba87475
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

