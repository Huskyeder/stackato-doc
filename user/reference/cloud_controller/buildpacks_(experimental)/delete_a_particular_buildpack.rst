
Delete a Particular Buildpack
-----------------------------


DELETE /v2/buildpacks/:guid
~~~~~~~~~~~~~~~~~~~~~~~~~~~


Fields
~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| Name     | Description                                                                                  | Default | Valid Values | Example Values     |
|          |                                                                                              |         |              |                    |
+==========+==============================================================================================+=========+==============+====================+
| guid     | The guid of the buildpack.                                                                   |         |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| name     | The name of the buildpack. To be used by app buildpack field. (only alphanumeric characters) |         |              | - Golang_buildpack |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| position | The order in which the buildpacks are checked during buildpack auto-detection.               |         |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+
| enabled  | Whether or not the buildpack will be used for staging                                        | true    |              |                    |
|          |                                                                                              |         |              |                    |
+----------+----------------------------------------------------------------------------------------------+---------+--------------+--------------------+


Parameters
~~~~~~~~~~

.. cssclass:: fields table-striped table-bordered table-condensed


+-------+-----------------------------------------------------------------------+
| Name  | Description                                                           |
|       |                                                                       |
+=======+=======================================================================+
| async | Will run the delete request in a background job. Recommended: 'true'. |
|       |                                                                       |
+-------+-----------------------------------------------------------------------+


Request
~~~~~~~


Headers
^^^^^^^

::

  Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE5IiwiZW1haWwiOiJlbWFpbC0xOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.juXvx6TDOhPVBgnUjgF87S02N86YOX7IiWX13ADjw9U
  Host: example.org
  Content-Type: application/x-www-form-urlencoded
  Cookie:


Route
^^^^^

::

  DELETE /v2/buildpacks/269557bb-f27d-4618-a54e-7fda9a5a9032


cURL
^^^^

::

  curl "https://api.[your-domain.com]/v2/buildpacks/269557bb-f27d-4618-a54e-7fda9a5a9032" -d '' -X DELETE \
  	-H "Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTE5IiwiZW1haWwiOiJlbWFpbC0xOUBzb21lZG9tYWluLmNvbSIsInNjb3BlIjpbImNsb3VkX2NvbnRyb2xsZXIuYWRtaW4iXSwiYXVkIjpbImNsb3VkX2NvbnRyb2xsZXIiXSwiZXhwIjoxMzk3NDk5NTM3fQ.juXvx6TDOhPVBgnUjgF87S02N86YOX7IiWX13ADjw9U" \
  	-H "Host: example.org" \
  	-H "Content-Type: application/x-www-form-urlencoded" \
  	-H "Cookie: "


Response
~~~~~~~~


Headers
^^^^^^^

::

  X-VCAP-Request-ID: 1c9d2888-1c81-489d-bb3c-07bac2115459
  X-Content-Type-Options: nosniff


Status
^^^^^^

::

  204 No Content

