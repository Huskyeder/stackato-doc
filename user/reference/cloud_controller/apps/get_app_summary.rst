
Get app summary
---------------


GET /v2/apps/:guid/summary
~~~~~~~~~~~~~~~~~~~~~~~~~~


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

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUzIiwiZW1haWwiOiJlbWFpbC00N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM2fQ.jrM3smiFKLNYOWamZtfTPB06UVOUDfD745iyNlRkN2I
  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/apps/37ec2c7e-7573-45b3-bf99-098f8c9db131/summary


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/apps/37ec2c7e-7573-45b3-bf99-098f8c9db131/summary" -X GET \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTUzIiwiZW1haWwiOiJlbWFpbC00N0Bzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzM2fQ.jrM3smiFKLNYOWamZtfTPB06UVOUDfD745iyNlRkN2I" \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 18a5cf3c-9278-4648-a582-851aab8d9380
  Content-Length: 881
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  200 OK


Body
^^^^

::

  {"guid":"37ec2c7e-7573-45b3-bf99-098f8c9db131","name":"name-468","routes":[],"running_instances":0,"services":[],"available_domains":[],"guid":"37ec2c7e-7573-45b3-bf99-098f8c9db131","name":"name-468","production":false,"space_guid":"5b44fbaa-078f-42cf-b7ae-9f52e40772aa","stack_guid":"646a29e1-f70e-4965-8e73-9f1b23f569e8","buildpack":null,"detected_buildpack":null,"environment_json":null,"memory":1024,"instances":1,"disk_quota":2048,"state":"STOPPED","version":"b4dc0550-b195-44f2-983e-29d3809c48a1","command":null,"console":false,"debug":null,"staging_task_id":null,"package_state":"PENDING","health_check_timeout":null,"system_env_json":{"VCAP_SERVICES":{}},"distribution_zone":"default","description":"","sso_enabled":false,"restart_required":false,"autoscale_enabled":false,"min_cpu_threshold":20,"max_cpu_threshold":80,"min_instances":1,"max_instances":2,"droplet_count":0}

