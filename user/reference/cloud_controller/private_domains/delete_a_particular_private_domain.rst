
Delete a Particular Private_domain
----------------------------------


DELETE /v2/private_domains/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ3IiwiZW1haWwiOiJlbWFpbC00N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.iPe4iGo4j83aUTbC2lLNPTepudgpR_ywNuhwKJe0b-w
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/private_domains/8d054ee3-37d8-47f5-9f1a-537fd1153828


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/private_domains/8d054ee3-37d8-47f5-9f1a-537fd1153828" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ3IiwiZW1haWwiOiJlbWFpbC00N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUyfQ.iPe4iGo4j83aUTbC2lLNPTepudgpR_ywNuhwKJe0b-w" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 49a5ea0b-8f1e-4d1d-bf88-ecdeac5c8f82
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

