
Retrieve a Particular Services
------------------------------


GET /v2/services/:guid
~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI2IiwiZW1haWwiOiJlbWFpbC0yMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.3COyyBO8jBRSoTbhEdGp7Ik5FZ-vSBBlxEG95alv4Xw
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/services/88d8adc0-c4d7-4179-a011-3bf44f7e35f9


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/services/88d8adc0-c4d7-4179-a011-3bf44f7e35f9" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI2IiwiZW1haWwiOiJlbWFpbC0yMEBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.3COyyBO8jBRSoTbhEdGp7Ik5FZ-vSBBlxEG95alv4Xw" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: cb1ce9d7-fc39-4fb2-8e3d-582b13c7b718
  Content-Length: 782
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
      "guid": "88d8adc0-c4d7-4179-a011-3bf44f7e35f9",
      "url": "/v2/services/88d8adc0-c4d7-4179-a011-3bf44f7e35f9",
      "created_at": "2014-06-19T17:18:50-07:00",
      "updated_at": null
    },
    "entity": {
      "label": "label-1",
      "provider": "provider-1",
      "url": "https://foo.com/url-2",
      "description": "desc-5",
      "long_description": null,
      "version": "version-1",
      "info_url": null,
      "active": true,
      "bindable": true,
      "unique_id": "16b3de05-863b-49f4-b221-8f13d018e032",
      "extra": null,
      "tags": [
  
      ],
      "requires": [
  
      ],
      "documentation_url": null,
      "service_broker_guid": "b90a3310-3db7-47ed-8dc1-eadfb918eb7b",
      "service_plans_url": "/v2/services/88d8adc0-c4d7-4179-a011-3bf44f7e35f9/service_plans"
    }
  }

