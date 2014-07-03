
List all Services
-----------------


GET /v2/services
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


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------------------------+-------------------------------------------------------------------------------------------------------+
| Name                   | Description                                                                                           |
|                        |                                                                                                       |
+========================+=======================================================================================================+
| q                      | Parameters used to filter the result set. Valid filters: active, label, provider, service_broker_guid |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| page                   | Page of results to fetch                                                                              |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| pretty                 | Enable pretty-printing of responses                                                                   |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| results-per-page       | Number of results per page                                                                            |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| inline-relations-depth | 0 - don't inline any relations and return URLs. Otherwise, inline to depth N.                         |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| exclude-relations      | Exclude the given relations from inlining.                                                            |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| include-relations      | Include only the given relations during inlining.                                                     |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| order                  | Result ordering, either 'asc' or 'desc'. Defaults to ascending.                                       |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+
| order-by               | The column to order results by.                                                                       |
|                        |                                                                                                       |
+------------------------+-------------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI3IiwiZW1haWwiOiJlbWFpbC0yMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.lDoLgo8JHXmzSKqPlEzDTv3H3OV5qS1ETKL8C3YuwNA
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/services


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/services" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI3IiwiZW1haWwiOiJlbWFpbC0yMUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.lDoLgo8JHXmzSKqPlEzDTv3H3OV5qS1ETKL8C3YuwNA" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 91bbdc96-fab3-44d0-b2d0-0738a6e72001
  Content-Length: 1001
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {
    "total_results": 1,
    "total_pages": 1,
    "prev_url": null,
    "next_url": null,
    "resources": [
      {
        "metadata": {
          "guid": "0e6db080-2177-4232-9a25-fc6544bcf693",
          "url": "/v2/services/0e6db080-2177-4232-9a25-fc6544bcf693",
          "created_at": "2014-06-19T17:18:50-07:00",
          "updated_at": null
        },
        "entity": {
          "label": "label-2",
          "provider": "provider-2",
          "url": "https://foo.com/url-4",
          "description": "desc-6",
          "long_description": null,
          "version": "version-2",
          "info_url": null,
          "active": true,
          "bindable": true,
          "unique_id": "f9d44b28-ddab-4206-aed8-eea79b104e14",
          "extra": null,
          "tags": [
  
          ],
          "requires": [
  
          ],
          "documentation_url": null,
          "service_broker_guid": "bbe8137b-5d5d-47ec-a0e1-c6f129fe6ff3",
          "service_plans_url": "/v2/services/0e6db080-2177-4232-9a25-fc6544bcf693/service_plans"
        }
      }
    ]
  }

