
Creating a service (deprecated)
-------------------------------


POST /v2/services
~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI5IiwiZW1haWwiOiJlbWFpbC0yM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.pwqLlPk7kxZuuxDz8DpxscMnlk1sNlotQueo9KalRiU
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/services


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

  curl "https://api.[your-domain.com]/v2/services" -d '{
    "label": "SomeMysqlService",
    "description": "Mysql stores things for you",
    "provider": "MySql Provider",
    "version": "2.0",
    "url": "http://myql.provider.com"
  }' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI5IiwiZW1haWwiOiJlbWFpbC0yM0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.pwqLlPk7kxZuuxDz8DpxscMnlk1sNlotQueo9KalRiU" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/services/eaba3fab-4e4d-49f9-822b-5de029c67700
  X-VCAP-Request-ID: 40a3efcd-5c08-46ba-8830-37da9ca0a229
  Content-Length: 746
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
      "guid": "eaba3fab-4e4d-49f9-822b-5de029c67700",
      "url": "/v2/services/eaba3fab-4e4d-49f9-822b-5de029c67700",
      "created_at": "2014-06-19T17:18:50-07:00",
      "updated_at": null
    },
    "entity": {
      "label": "SomeMysqlService",
      "provider": "MySql Provider",
      "url": "http://myql.provider.com",
      "description": "Mysql stores things for you",
      "long_description": null,
      "version": "2.0",
      "info_url": null,
      "active": false,
      "bindable": true,
      "unique_id": null,
      "extra": null,
      "tags": [
  
      ],
      "requires": [
  
      ],
      "documentation_url": null,
      "service_broker_guid": null,
      "service_plans_url": "/v2/services/eaba3fab-4e4d-49f9-822b-5de029c67700/service_plans"
    }
  }

