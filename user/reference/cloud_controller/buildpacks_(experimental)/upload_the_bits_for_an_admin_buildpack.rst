
Upload the bits for an admin buildpack
--------------------------------------


PUT /v2/buildpacks/:guid/bits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PUT not shown because it involves putting a large zip file. Right now only zipped admin buildpacks are accepted

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

