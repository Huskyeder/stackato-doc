
Creating a space
----------------


POST /v2/spaces/
~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| Name              | Description                             | Default | Valid Values | Example Values                              |
|                   |                                         |         |              |                                             |
+===================+=========================================+=========+==============+=============================================+
| guid              | The guid of the space.                  |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| name              | The name of the space                   |         |              | - development                               |
|                   |                                         |         |              | - demo                                      |
|                   |                                         |         |              | - production                                |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| organization_guid | The guid of the associated organization |         |              | - guid-e6a9f1c9-e2dd-43b7-888b-dd04ad8fd826 |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| developer_guids   | The list of the associated developers   |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| manager_guids     | The list of the associated managers     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| auditor_guids     | The list of the associated auditors     |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+
| domain_guids      | The list of the associated domains      |         |              |                                             |
|                   |                                         |         |              |                                             |
+-------------------+-----------------------------------------+---------+--------------+---------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQwIiwiZW1haWwiOiJlbWFpbC00MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ._q3xyMRlwxGQ0W4BUO4YagDcklzbTeMFvJsOdyQOcgI
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/spaces


Body
^^^^

::

  {"name":"development","organization_guid":"guid-e6a9f1c9-e2dd-43b7-888b-dd04ad8fd826","organization_guid":"c8412aa5-d3c0-4f4d-803e-c90b12a0c352"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces" -d '{"name":"development","organization_guid":"guid-e6a9f1c9-e2dd-43b7-888b-dd04ad8fd826","organization_guid":"c8412aa5-d3c0-4f4d-803e-c90b12a0c352"}' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQwIiwiZW1haWwiOiJlbWFpbC00MEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTUwfQ._q3xyMRlwxGQ0W4BUO4YagDcklzbTeMFvJsOdyQOcgI" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4
  X-VCAP-Request-ID: da9ac60a-e87d-45e7-890c-e58f908746ba
  Content-Length: 1076
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
      "guid": "f7938aba-26ed-444b-88b5-284bc0c103a4",
      "url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4",
      "created_at": "2014-04-07T11:19:10-07:00",
      "updated_at": null
    },
    "entity": {
      "name": "development",
      "organization_guid": "c8412aa5-d3c0-4f4d-803e-c90b12a0c352",
      "is_default": false,
      "organization_url": "/v2/organizations/c8412aa5-d3c0-4f4d-803e-c90b12a0c352",
      "developers_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/developers",
      "managers_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/managers",
      "auditors_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/auditors",
      "apps_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/apps",
      "domains_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/domains",
      "service_instances_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/service_instances",
      "app_events_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/app_events",
      "events_url": "/v2/spaces/f7938aba-26ed-444b-88b5-284bc0c103a4/events"
    }
  }


Audit Records Created By The Request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Audit Record: audit.space.create
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------------------------------------+
| Attribute Name    | Value                                                              |
|                   |                                                                    |
+===================+====================================================================+
| id                | 1                                                                  |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| guid              | dfcd2807-e367-4f6d-b154-ce34cb3f9436                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| created_at        | 2014-04-07 11:19:10 -0700                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| updated_at        |                                                                    |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| timestamp         | 2014-04-07 11:19:10 -0700                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| type              | audit.space.create                                                 |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actor             | uaa-id-40                                                          |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actor_type        | user                                                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actee             | f7938aba-26ed-444b-88b5-284bc0c103a4                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| actee_type        | space                                                              |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| metadata          | ::                                                                 |
|                   |                                                                    |
|                   |   {                                                                |
|                   |     "request": {                                                   |
|                   |       "name": "development",                                       |
|                   |       "organization_guid": "c8412aa5-d3c0-4f4d-803e-c90b12a0c352", |
|                   |       "is_default": false                                          |
|                   |     }                                                              |
|                   |   }                                                                |
|                   |                                                                    |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| space_id          | 4                                                                  |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| organization_guid | c8412aa5-d3c0-4f4d-803e-c90b12a0c352                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+
| space_guid        | f7938aba-26ed-444b-88b5-284bc0c103a4                               |
|                   |                                                                    |
+-------------------+--------------------------------------------------------------------+

