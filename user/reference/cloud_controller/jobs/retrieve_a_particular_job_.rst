
Retrieve a Particular Job
-------------------------


GET /v2/apps/:guid
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

  GET /v2/jobs/377678a6-c69e-4c8e-86f3-d6414232469f


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/jobs/377678a6-c69e-4c8e-86f3-d6414232469f" -X GET \
  	-H "Host: example.org" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 3c0703b6-11cb-4d24-bcac-7524fb45c5e9
  Content-Length: 275
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
      "guid": "377678a6-c69e-4c8e-86f3-d6414232469f",
      "created_at": "2014-04-07T11:19:08-07:00",
      "url": "/v2/jobs/377678a6-c69e-4c8e-86f3-d6414232469f"
    },
    "entity": {
      "guid": "377678a6-c69e-4c8e-86f3-d6414232469f",
      "status": "queued"
    }
  }

