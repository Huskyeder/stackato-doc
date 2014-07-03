
Restage an app
--------------


POST /v2/apps/:guid/restage
~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTExMCIsImVtYWlsIjoiZW1haWwtOTJAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.OFWeYJamodix2KdtTmihqT16YMZZHeNPTxVgwsug9Eo
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  POST /v2/apps/746eb2df-2ef3-4b48-a669-c45012c8502f/restage


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/apps/746eb2df-2ef3-4b48-a669-c45012c8502f/restage" -d '' -X POST \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTExMCIsImVtYWlsIjoiZW1haWwtOTJAc29tZWRvbWFpbi5jb20iLCJzY29wZSI6WyJjbG91ZF9jb250cm9sbGVyLmFkbWluIl0sImF1ZCI6WyJjbG91ZF9jb250cm9sbGVyIl0sImV4cCI6MTQwMzgyODM0Nn0.OFWeYJamodix2KdtTmihqT16YMZZHeNPTxVgwsug9Eo" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  Location: /v2/apps/746eb2df-2ef3-4b48-a669-c45012c8502f
  X-VCAP-Request-ID: f1f27d56-de7e-4f39-a9d0-9c80c494fd84
  Content-Length: 1192
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
      "guid": "746eb2df-2ef3-4b48-a669-c45012c8502f",
      "url": "/v2/apps/746eb2df-2ef3-4b48-a669-c45012c8502f",
      "created_at": "2014-06-19T17:19:06-07:00",
      "updated_at": "2014-06-19T17:19:06-07:00"
    },
    "entity": {
      "guid": "746eb2df-2ef3-4b48-a669-c45012c8502f",
      "name": "name-655",
      "production": false,
      "space_guid": "2acbeae0-51c9-4257-818a-6d9e49dce5d1",
      "stack_guid": "e39c41c7-1cf3-40e2-b324-c6f555b41c78",
      "buildpack": null,
      "detected_buildpack": null,
      "environment_json": null,
      "memory": 1024,
      "instances": 1,
      "disk_quota": 2048,
      "state": "STARTED",
      "version": "4243f417-1f04-4906-a4cf-f590081593cb",
      "command": null,
      "console": false,
      "debug": null,
      "staging_task_id": null,
      "package_state": "PENDING",
      "health_check_timeout": null,
      "system_env_json": {
        "VCAP_SERVICES": {
  
        }
      },
      "distribution_zone": "default",
      "description": "",
      "sso_enabled": false,
      "restart_required": false,
      "autoscale_enabled": false,
      "min_cpu_threshold": 20,
      "max_cpu_threshold": 80,
      "min_instances": 1,
      "max_instances": 2,
      "droplet_count": 1
    }
  }

