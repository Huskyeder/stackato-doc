
Delete a Particular Service
---------------------------


DELETE /v2/services/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~


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


+-------+------------------------------------------------------------------------------------------------------------------------+
| Name  | Description                                                                                                            |
|       |                                                                                                                        |
+=======+========================================================================================================================+
| async | Will run the delete request in a background job. Recommended: 'true'.                                                  |
|       |                                                                                                                        |
+-------+------------------------------------------------------------------------------------------------------------------------+
| purge | Recursively remove a service and child objects from Cloud Foundry database without making requests to a service broker |
|       |                                                                                                                        |
+-------+------------------------------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI4IiwiZW1haWwiOiJlbWFpbC0yMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.uOMLRWlnC015As2fd2aC5VYIzYuYzE52hQmJX6rhNpY
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/services/ab2536a7-3425-466d-994b-c9c9ecb5194c


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/services/ab2536a7-3425-466d-994b-c9c9ecb5194c" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI4IiwiZW1haWwiOiJlbWFpbC0yMkBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzMwfQ.uOMLRWlnC015As2fd2aC5VYIzYuYzE52hQmJX6rhNpY" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: d008ab97-ca6c-4266-b3cb-f146591e933f
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

