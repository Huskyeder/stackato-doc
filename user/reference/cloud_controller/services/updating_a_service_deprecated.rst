
Updating a service (deprecated)
-------------------------------


PUT /v2/services
~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| Name                | Description                                                                         | Default | Valid Values | Example Values                                                  |
|                     |                                                                                     |         |              |                                                                 |
+=====================+=====================================================================================+=========+==============+=================================================================+
| guid                | The guid of the service                                                             |         |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| label               | The name of the service                                                             |         |              | - SomeMysqlService                                              |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| description         | A short blurb describing the service                                                |         |              | - Mysql stores things for you                                   |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| long_description    | A longer description of the service                                                 |         |              | - Mysql is a database. It stores things. Use it in your apps... |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| info_url            | A url that points to an info page for the service                                   |         |              | - http://info.somemysqlservice.com                              |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| documentation_url   | A url that points to a documentation page for the service                           |         |              | - http://docs.somemysqlservice.com                              |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| timeout             | A timeout used by the v1 service gateway client                                     |         |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| active              | A boolean describing that the service can be provisioned by users                   | false   |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| bindable            | A boolean describing that the service can be bound to applications                  | true    |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| extra               | A JSON field with extra data pertaining to the service                              |         |              | - {"providerDisplayName": "MyServiceProvider"}                  |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| unique_id           | A guid that identifies the service with the broker (not the same as the guid above) |         |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| tags                | A list of tags for the service                                                      | []      |              | - database                                                      |
|                     |                                                                                     |         |              | - mysql                                                         |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| requires            | A list of dependencies for services                                                 | []      |              | - syslog_drain                                                  |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| provider            | The name of the service provider (used only by v1 service gateways)                 |         |              | - MySql Provider                                                |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| version             | The version of the service (used only by v1 service gateways)                       |         |              | - 2.0                                                           |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| url                 | The url of ther service provider (used only by v1 service gateways)                 |         |              | - http://myql.provider.com                                      |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+
| service_broker_guid | The guid of the v2 service broker associated with the service                       |         |              |                                                                 |
|                     |                                                                                     |         |              |                                                                 |
+---------------------+-------------------------------------------------------------------------------------+---------+--------------+-----------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMwIiwiZW1haWwiOiJlbWFpbC0yNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.7D8CBwB5Se_I0kzIkxqKKM1JyAqFHRmMdY-PhwV2uL0
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  PUT /v2/services/c7061c24-8690-4f41-a0de-eb65168d0b96


Body
^^^^

::

  {
    "label": "SomeMysqlService",
    "description": "Mysql stores things for you",
    "provider": "MySql Provider",
    "version": "2.0",
    "url": "http://myql.provider.com"
  }


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/services/c7061c24-8690-4f41-a0de-eb65168d0b96" -d '{
    "label": "SomeMysqlService",
    "description": "Mysql stores things for you",
    "provider": "MySql Provider",
    "version": "2.0",
    "url": "http://myql.provider.com"
  }' -X PUT \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTMwIiwiZW1haWwiOiJlbWFpbC0yNEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.7D8CBwB5Se_I0kzIkxqKKM1JyAqFHRmMdY-PhwV2uL0" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 52448fb6-0999-4f36-b740-d953012c7204
  Content-Length: 836
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
      "guid": "c7061c24-8690-4f41-a0de-eb65168d0b96",
      "url": "/v2/services/c7061c24-8690-4f41-a0de-eb65168d0b96",
      "created_at": "2014-06-19T17:18:50-07:00",
      "updated_at": "2014-06-19T17:18:50-07:00"
    },
    "entity": {
      "label": "SomeMysqlService",
      "provider": "MySql Provider",
      "url": "http://myql.provider.com",
      "description": "Mysql stores things for you",
      "long_description": null,
      "version": "2.0",
      "info_url": null,
      "active": true,
      "bindable": true,
      "unique_id": "ff7319c5-6e51-435b-8579-3207ec2618e5",
      "extra": null,
      "tags": [
  
      ],
      "requires": [
  
      ],
      "documentation_url": null,
      "service_broker_guid": "891d410f-5fba-4120-ab75-cbc78802c436",
      "service_plans_url": "/v2/services/c7061c24-8690-4f41-a0de-eb65168d0b96/service_plans"
    }
  }

