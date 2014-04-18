
Purge and reseed app usage events
---------------------------------


POST /v2/app_usage_events/destructively_purge_all_and_reseed_started_apps
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Destroys all existing events. Populates new usage events, one for each started app. All populated events will have a created_at value of current time. There is the potential race condition if apps are currently being started, stopped, or scaled. The seeded usage events will have the same guid as the app.

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+------+-------------+---------+--------------+----------------+
| Name | Description | Default | Valid Values | Example Values |
|      |             |         |              |                |
+======+=============+=========+==============+================+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI3IiwiZW1haWwiOiJlbWFpbC0yN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQxfQ.wKl5Cst1LZ49WVf4O9OShjILqqKLA0dtZ4ZTqzqDCe0
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/app_usage_events/destructively_purge_all_and_reseed_started_apps


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/app_usage_events/destructively_purge_all_and_reseed_started_apps" -d '' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTI3IiwiZW1haWwiOiJlbWFpbC0yN0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTQxfQ.wKl5Cst1LZ49WVf4O9OShjILqqKLA0dtZ4ZTqzqDCe0" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 9205a7c1-7695-456d-ae8c-017d804f6c5c
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

