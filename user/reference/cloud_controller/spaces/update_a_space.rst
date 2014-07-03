
Update a space
--------------


PUT /v2/spaces/:guid
~~~~~~~~~~~~~~~~~~~~


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
| organization_guid | The guid of the associated organization |         |              | - guid-90a03e48-ed1f-485d-bf50-4372c9eb3984 |
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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE5IiwiZW1haWwiOiJlbWFpbC0xM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.2HFgZhYD2UgwYNw5ShaSc2G3G-7czGzRHMF-y0Qzd-I
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd


Body
^^^^

::

  {"name":"New Space Name"}


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd" -d '{"name":"New Space Name"}' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE5IiwiZW1haWwiOiJlbWFpbC0xM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzI4fQ.2HFgZhYD2UgwYNw5ShaSc2G3G-7czGzRHMF-y0Qzd-I" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: eaaa62b0-4810-418f-a7b3-ac8d4e371b17
  Content-Length: 1178
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
      "guid": "df6d53df-7533-49d4-9412-c6eb7aec24fd",
      "url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd",
      "created_at": "2014-06-19T17:18:48-07:00",
      "updated_at": "2014-06-19T17:18:48-07:00"
    },
    "entity": {
      "name": "New Space Name",
      "organization_guid": "22bdb282-0a01-42f5-9fbe-3d6a4d659865",
      "is_default": false,
      "organization_url": "/v2/organizations/22bdb282-0a01-42f5-9fbe-3d6a4d659865",
      "developers_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/developers",
      "managers_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/managers",
      "auditors_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/auditors",
      "apps_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/apps",
      "routes_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/routes",
      "domains_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/domains",
      "service_instances_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/service_instances",
      "app_events_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/app_events",
      "events_url": "/v2/spaces/df6d53df-7533-49d4-9412-c6eb7aec24fd/events"
    }
  }


Audit Records Created By The Request
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Audit Record: audit.space.update
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------------+--------------------------------------+
| Attribute Name    | Value                                |
|                   |                                      |
+===================+======================================+
| id                | 37                                   |
|                   |                                      |
+-------------------+--------------------------------------+
| guid              | e15d2ef2-ad49-4932-80aa-a655594e7df2 |
|                   |                                      |
+-------------------+--------------------------------------+
| created_at        | 2014-06-19 17:18:48 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| updated_at        |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| timestamp         | 2014-06-19 17:18:48 -0700            |
|                   |                                      |
+-------------------+--------------------------------------+
| type              | audit.space.update                   |
|                   |                                      |
+-------------------+--------------------------------------+
| actor             | uaa-id-19                            |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_type        | user                                 |
|                   |                                      |
+-------------------+--------------------------------------+
| actee             | df6d53df-7533-49d4-9412-c6eb7aec24fd |
|                   |                                      |
+-------------------+--------------------------------------+
| actee_type        | space                                |
|                   |                                      |
+-------------------+--------------------------------------+
| metadata          | ::                                   |
|                   |                                      |
|                   |   {                                  |
|                   |     "request": {                     |
|                   |       "name": "New Space Name"       |
|                   |     }                                |
|                   |   }                                  |
|                   |                                      |
|                   |                                      |
+-------------------+--------------------------------------+
| space_id          | 45                                   |
|                   |                                      |
+-------------------+--------------------------------------+
| organization_guid | 22bdb282-0a01-42f5-9fbe-3d6a4d659865 |
|                   |                                      |
+-------------------+--------------------------------------+
| space_guid        | df6d53df-7533-49d4-9412-c6eb7aec24fd |
|                   |                                      |
+-------------------+--------------------------------------+
| actor_name        | email-13@somedomain.com              |
|                   |                                      |
+-------------------+--------------------------------------+
| actee_name        | New Space Name                       |
|                   |                                      |
+-------------------+--------------------------------------+

