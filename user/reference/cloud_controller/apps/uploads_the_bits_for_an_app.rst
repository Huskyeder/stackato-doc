
Uploads the bits for an app
---------------------------


PUT /v2/apps/:guid/bits
~~~~~~~~~~~~~~~~~~~~~~~

Defines and uploads the bits (artifacts and dependencies) that this application needs to run, using a multipart PUT request. Bits that have already been uploaded can be referenced by their resource fingerprint(s). Bits that have not already been uploaded to Cloud Foundry must be included as a zipped binary file named "application".

Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+--------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name        | Description                                                                                                                                                                                                                                                                                             | Default | Valid Values | Example Values                                                                                                                                                                       |
|             |                                                                                                                                                                                                                                                                                                         |         |              |                                                                                                                                                                                      |
+=============+=========================================================================================================================================================================================================================================================================================================+=========+==============+======================================================================================================================================================================================+
| guid        | The guid of the app.                                                                                                                                                                                                                                                                                    |         |              |                                                                                                                                                                                      |
|             |                                                                                                                                                                                                                                                                                                         |         |              |                                                                                                                                                                                      |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+--------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| async       | If true, a new asynchronous job is submitted to persist the bits and the job id is included in the response. The client will need to poll the job's status until persistence is completed successfully. If false, the request will block until the bits are persisted synchronously. Defaults to false. |         |              | - true                                                                                                                                                                               |
|             |                                                                                                                                                                                                                                                                                                         |         |              |                                                                                                                                                                                      |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+--------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| resources   | Fingerprints of the application bits that have previously been pushed to Cloud Foundry. Each fingerprint must include the file path, sha1 hash, and file size in bytes. Fingerprinted bits MUST exist in the Cloud Foundry resource cache or the request (or job, if async) will fail.                  |         |              | - [{"fn":"path/to/content.txt","size":123,"sha1":"b907173290db6a155949ab4dc9b2d019dea0c901"},{"fn":"path/to/code.jar","size":123,"sha1":"ff84f89760317996b9dd180ab996b079f418396f"}] |
|             |                                                                                                                                                                                                                                                                                                         |         |              |                                                                                                                                                                                      |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+--------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| application | A binary zip file containing the application bits.                                                                                                                                                                                                                                                      |         |              |                                                                                                                                                                                      |
|             |                                                                                                                                                                                                                                                                                                         |         |              |                                                                                                                                                                                      |
+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+--------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTc1IiwiZW1haWwiOiJlbWFpbC02OUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxNDAzODI4MzQwfQ.USYBwXtp0bjEjOz6T9CikRyxhXLAbjENvjDsKnIxOKI
  Host: example.org
  Content-Type: multipart/form-data; boundary=AaB03x
  Cookie:


Route
^^^^^

::

  PUT /v2/apps/5a110f74-182b-4a7c-832d-d10de448494b/bits


Body
^^^^

::

  --AaB03x
  Content-Disposition: form-data; name="async"
  
  true
  --AaB03x
  Content-Disposition: form-data; name="resources"
  
  [{"fn":"path/to/content.txt","size":123,"sha1":"b907173290db6a155949ab4dc9b2d019dea0c901"},{"fn":"path/to/code.jar","size":123,"sha1":"ff84f89760317996b9dd180ab996b079f418396f"}]
  --AaB03x
  Content-Disposition: form-data; name="application"; filename="application.zip"
  Content-Type: application/zip
  Content-Length: 123
  Content-Transfer-Encoding: binary
  
  <<binary artifact bytes>>
  --AaB03x


Response
~~~~~~~~


Headers
^^^^^^^

::

  Content-Type: application/json;charset=utf-8
  X-VCAP-Request-ID: 8e4a1fa2-2f2c-401e-b992-02fb7ad68147
  Content-Length: 275
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
      "guid": "d16da15e-b64f-4f37-ae12-db13ca283d1b",
      "created_at": "2014-06-19T17:19:00-07:00",
      "url": "/v2/jobs/d16da15e-b64f-4f37-ae12-db13ca283d1b"
    },
    "entity": {
      "guid": "d16da15e-b64f-4f37-ae12-db13ca283d1b",
      "status": "queued"
    }
  }

