
Retrieve Job Error message
--------------------------


GET /v2/jobs/:guid
~~~~~~~~~~~~~~~~~~

This is an unauthenticated access to get the job's error status with specified guid.

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+--------+------------------------+---------+--------------+----------------+
| Name   | Description            | Default | Valid Values | Example Values |
|        |                        |         |              |                |
+========+========================+=========+==============+================+
| guid   | The guid of the job.   |         |              |                |
|        |                        |         |              |                |
+--------+------------------------+---------+--------------+----------------+
| status | The status of the job. |         | - failed     |                |
|        |                        |         | - finished   |                |
|        |                        |         | - queued     |                |
|        |                        |         | - running    |                |
|        |                        |         |              |                |
+--------+------------------------+---------+--------------+----------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Host: example.org
  Cookie:


Route
^^^^^

::

  GET /v2/jobs/db177bbd-36e9-4246-9a11-f9bd0d5975ef


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/jobs/db177bbd-36e9-4246-9a11-f9bd0d5975ef" -X GET \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 0b497425-84b6-43f0-92ed-7020313713f1
  Content-Length: 496
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
      "guid": "db177bbd-36e9-4246-9a11-f9bd0d5975ef",
      "created_at": "2014-06-19T17:18:51-07:00",
      "url": "/v2/jobs/db177bbd-36e9-4246-9a11-f9bd0d5975ef"
    },
    "entity": {
      "guid": "db177bbd-36e9-4246-9a11-f9bd0d5975ef",
      "status": "failed",
      "error": "Use of entity>error is deprecated in favor of entity>error_details.",
      "error_details": {
        "error_code": "UnknownError",
        "description": "An unknown error occurred.",
        "code": 10001
      }
    }
  }

