
Retrieve the Job
----------------


GET /v2/jobs/:guid
~~~~~~~~~~~~~~~~~~

This is an unauthenticated access to get the job's status with specified guid.

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

  GET /v2/jobs/5c41c0c1-5fcf-467c-8323-89e978c455c5


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/jobs/5c41c0c1-5fcf-467c-8323-89e978c455c5" -X GET \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 2ac222ed-805b-48df-9ef1-3a2af0123ee1
  Content-Length: 172
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
      "guid": "0",
      "created_at": "1969-12-31T16:00:00-08:00",
      "url": "/v2/jobs/0"
    },
    "entity": {
      "guid": "0",
      "status": "finished"
    }
  }

