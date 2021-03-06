.. index:: Kato Commands

.. _kato-command-ref:

Kato Command Reference
======================

Stackato administration utility

Usage
-----

**kato** *command* [**-h**] [**--help**] [*arguments*] [*command-options*] 

.. _kato-command-ref-list:

Commands
--------

* :ref:`config <kato-command-ref-config>` Manipulate configuration values of Stackato components.
* :ref:`data <kato-command-ref-data-export>` Import, export, or repair Stackato system data.

  * :ref:`data export <kato-command-ref-data-export>`

  * :ref:`data import <kato-command-ref-data-import>`

  * :ref:`data repair <kato-command-ref-data-repair-routes>`
* :ref:`debug <kato-command-ref-debug-configwatch>` Commands for debugging for Stackato internals.

  * :ref:`debug configwatch <kato-command-ref-debug-configwatch>`

  * :ref:`debug redis <kato-command-ref-debug-redis>`
* :ref:`history <kato-command-ref-history>` Show the kato commands that have been run
* :ref:`info <kato-command-ref-info>` Show information about this node or cluster including assigned and
* :ref:`inspect <kato-command-ref-inspect>` Detect common problems with your Stackato install using 'kato inspect'
* :ref:`license <kato-command-ref-license>` Set the Stackato license in use for this microcloud or cluster.
* :ref:`log <kato-command-ref-log-stream>` Logging utilities for Stackato

  * :ref:`log drain <kato-command-ref-log-drain-add>`

  * :ref:`log stream <kato-command-ref-log-stream>`

  * :ref:`log tail <kato-command-ref-log-tail>`
* :ref:`node <kato-command-ref-node-attach>` Node management

  * :ref:`node attach <kato-command-ref-node-attach>`

  * :ref:`node availabilityzone <kato-command-ref-node-availabilityzone>`

  * :ref:`node detach <kato-command-ref-node-detach>`

  * :ref:`node list <kato-command-ref-node-list>`

  * :ref:`node migrate <kato-command-ref-node-migrate>`

  * :ref:`node placementzones <kato-command-ref-node-placementzones-add>`

  * :ref:`node reattach <kato-command-ref-node-reattach>`

  * :ref:`node remove <kato-command-ref-node-remove>`

  * :ref:`node rename <kato-command-ref-node-rename>`

  * :ref:`node reset <kato-command-ref-node-reset>`

  * :ref:`node retire <kato-command-ref-node-retire>`

  * :ref:`node setup <kato-command-ref-node-setup-core>`

  * :ref:`node update <kato-command-ref-node-update>`

  * :ref:`node upgrade <kato-command-ref-node-upgrade>`

  * :ref:`node version <kato-command-ref-node-version>`
* :ref:`op <kato-command-ref-op-custom_ssl_cert>` Various operational commands

  * :ref:`op custom_ssl_cert <kato-command-ref-op-custom_ssl_cert>`

  * :ref:`op defer <kato-command-ref-op-defer>`

  * :ref:`op dhcp <kato-command-ref-op-dhcp>`

  * :ref:`op generate_service_tokens <kato-command-ref-op-generate_service_tokens>`

  * :ref:`op import_from_yaml_file <kato-command-ref-op-import_from_yaml_file>`

  * :ref:`op import_from_yaml_files <kato-command-ref-op-import_from_yaml_files>`

  * :ref:`op max_client_upload <kato-command-ref-op-max_client_upload>`

  * :ref:`op regenerate <kato-command-ref-op-regenerate>`

  * :ref:`op remap_hosts <kato-command-ref-op-remap_hosts>`

  * :ref:`op run_deferred <kato-command-ref-op-run_deferred>`

  * :ref:`op set_timezone <kato-command-ref-op-set_timezone>`

  * :ref:`op static_ip <kato-command-ref-op-static_ip>`

  * :ref:`op update_hostsfile <kato-command-ref-op-update_hostsfile>`

  * :ref:`op upstream_proxy <kato-command-ref-op-upstream_proxy>`
* :ref:`patch <kato-command-ref-patch>` Update a Stackato cluster with post-release fixes.
* :ref:`process <kato-command-ref-process-list>` Start, stop, or restart individual processes. Generally not required;

  * :ref:`process list <kato-command-ref-process-list>`

  * :ref:`process ready <kato-command-ref-process-ready>`

  * :ref:`process restart <kato-command-ref-process-restart>`

  * :ref:`process start <kato-command-ref-process-start>`

  * :ref:`process stop <kato-command-ref-process-stop>`
* :ref:`relocate <kato-command-ref-relocate>` Move containers, application droplets, or services to a new mount point
* :ref:`report <kato-command-ref-report>` Generate a report that can be sent to Stackato support.
* :ref:`restart <kato-command-ref-restart>` Restart Stackato or individual roles.
* :ref:`role <kato-command-ref-role-add>` Management of node roles

  * :ref:`role add <kato-command-ref-role-add>`

  * :ref:`role info <kato-command-ref-role-info>`

  * :ref:`role remove <kato-command-ref-role-remove>`
* :ref:`shell <kato-command-ref-shell>` Interactive shell for kato
* :ref:`start <kato-command-ref-start>` Start Stackato or individual roles.
* :ref:`status <kato-command-ref-status>` List configured roles and their current status across the cluster.
* :ref:`stop <kato-command-ref-stop>` Stop Stackato or individual roles.
* :ref:`version <kato-command-ref-version>` Display the version of Stackato being run.

.. _kato-command-ref-details:

Command Usage Details
---------------------


.. _kato-command-ref-config:

**config** **get** [**options**] [*<component>*] [*<key-path>*]

**config** **set** [**options**] *<component>* *<key-path>* [*<value>*]

**config** **del** [**options**] *<component>* *<key-path>*

**config** **push** [**options**] *<component>* *<key-path>* *<value>*

**config** **pop** [**options**] *<component>* *<key-path>* *<value>*

  Manipulate configuration values of Stackato components.

  *<value>*                               If value is not given for "set", then it read from STDIN.

  *<component>*                           Can be "cluster", "local" or the name of a process.


  **-h** **--help**                       Show help information

  **-j** **--json**                       For "set", use JSON format when setting config key values. For "get", use JSON format for displaying output.

  **-y** **--yaml**                       Use YAML format when retrieving or setting config key values. YAML is the default output format.

  **-f** **--flat**                       Use a flat output format "<full-config-path> <value>"

  **--force**                             Force updating value to different type.



----


.. _kato-command-ref-data-export:

**data** **export** **--only-this-node** [**options**] [*<filename>*]

**data** **export** **--cluster** [**options**] [*<filename>*]

**data** **export** **--manual** [**options**] [*<filename>*]

  Export Stackato system data to or from clusters/nodes. With no
  options specified, includes all data except 'resources' and 'aok-config'.

  *<filename>*                            The filename the export will be written to


  **-h** **--help**                       Show help information

  **--cluster**                           Operate on the entire cluster

  **--only-this-node**                    Only affect this node

  **--manual**                            Only import/export roles specified on the command line

  **--force**                             Force import/export of specified roles even if they are not enabled Requires --manual Implies --only-this-node

  **--remote**                            Remote import/export (internal use only)

  **--base-dir** *<base-dir>*             Base directory for extracting temporary files

  **--only-users-orgs**                   Include only the portions related to users and orgs (parts of main-db, aok-db, aok-config, db-encryption-key, license)

  **--droplets**                          Include droplets (uploaded apps)

  **--exclude-droplets**                  Do not include droplets (uploaded apps)

  **--packages**                          Include app packages

  **--exclude-packages**                  Do not include app packages

  **--resources**                         Include the upload cache

  **--exclude-resources**                 Do not include the upload cache (default)

  **--license**                           Include the Stackato license

  **--exclude-license**                   Do not include the Stackato license

  **--db-encryption-key**                 Include the key used to encrypt the Stackato DB (recommended)

  **--exclude-db-encryption-key**         Do not include the key

  **--main-db**                           Include the cloud controller's main database

  **--exclude-main-db**                   Do not include the cloud controller's main database

  **--aok-db**                            Include AOK's database

  **--exclude-aok-db**                    Do not include AOK's database

  **--aok-config**                        Include AOK's configuration 

  **--exclude-aok-config**                Do not include AOK's configuration (default)

  **--stackato-rest-db**                  Include Stackato Rest's database

  **--exclude-stackato-rest-db**          Do not include Stackato Rest's database

  **--filesystem**                        Include the filesystem service

  **--exclude-filesystem**                Do not include the filesystem service

  **--exclude-filesystem-data**           Do not include the filesystem service's user data

  **--exclude-filesystem-user-creation**  Do not include the filesystem service's user creation/quota

  **--harbor**                            Include the harbor service

  **--exclude-harbor**                    Do not include the harbor service

  **--exclude-harbor-data**               Do not include the harbor service's user data

  **--exclude-harbor-metadata**           Do not include the harbor service's metadata

  **--mysql**                             Include the MySQL service

  **--exclude-mysql**                     Do not include the MySQL service

  **--exclude-mysql-data**                Do not include the MySQL service's data

  **--exclude-mysql-metadata**            Do not include the MySQL service's metadata

  **--postgresql**                        Include the PostgreSQL service

  **--exclude-postgresql**                Do not include the PostgreSQL service

  **--exclude-postgresql-data**           Do not include the PostgreSQL service's data

  **--exclude-postgresql-metadata**       Do not include the PostgreSQL service's metadata

  **--mongodb**                           Include the MongoDB service

  **--exclude-mongodb**                   Do not include the MongoDB service

  **--exclude-mongodb-data**              Do not include the MongoDB service's data

  **--exclude-mongodb-metadata**          Do not include the MongoDB service's metadata

  **--memcached**                         Include the memcached service

  **--exclude-memcached**                 Do not include the memcached service

  **--exclude-memcached-data**            Do not include the memcached service's data

  **--exclude-memcached-metadata**        Do not include the memcached service's metadata

  **--redis**                             Include the Redis service

  **--exclude-redis**                     Do not include the Redis service

  **--exclude-redis-data**                Do not include the Redis service's data

  **--exclude-redis-metadata**            Do not include the Redis service's metadata

  **--rabbit**                            Include the RabbitMQ service

  **--exclude-rabbit**                    Do not include the RabbitMQ service

  **--exclude-rabbit-data**               Do not include the RabbitMQ service's data

  **--exclude-rabbit-metadata**           Do not include the RabbitMQ service's metadata

  **--rabbit3**                           Include the RabbitMQ service

  **--exclude-rabbit3**                   Do not include the RabbitMQ service

  **--exclude-rabbit3-data**              Do not include the RabbitMQ service's data

  **--exclude-rabbit3-metadata**          Do not include the RabbitMQ service's metadata



----


.. _kato-command-ref-data-import:

**data** **import** **--only-this-node** [**options**] *<source>*

**data** **import** **--cluster** [**options**] *<source>*

**data** **import** **--manual** [**options**] *<source>*

  Import Stackato system data to or from clusters/nodes. With no
  options specified, includes all data except 'resources' and 'aok-config'.

  *<source>*                              This can a hostname or a filename to import from


  **-h** **--help**                       Show help information

  **--cluster**                           Operate on the entire cluster

  **--only-this-node**                    Only affect this node

  **--fix-app-paths**                     Rewrite /app and /app/app paths in stackato.yml and manifest.yml

  **--manual**                            Only import/export roles specified on the command line

  **--force**                             Force import/export of specified roles even if they are not enabled Requires --manual Implies --only-this-node

  **--remote**                            Remote import/export (internal use only)

  **--base-dir** *<base-dir>*             Base directory for extracting temporary files

  **--timeout** *<seconds>*               Override staging timeout default for legacy import

  **--legacy**                            Treat import as a legacy services import (internal use only)

  **--droplets**                          Include droplets (uploaded apps)

  **--exclude-droplets**                  Do not include droplets (uploaded apps)

  **--packages**                          Include app packages

  **--exclude-packages**                  Do not include app packages

  **--resources**                         Include the upload cache

  **--exclude-resources**                 Do not include the upload cache (default)

  **--license**                           Include the Stackato license

  **--exclude-license**                   Do not include the Stackato license

  **--db-encryption-key**                 Include the key used to encrypt the Stackato DB (recommended)

  **--exclude-db-encryption-key**         Do not include the key

  **--main-db**                           Include the cloud controller's main database

  **--exclude-main-db**                   Do not include the cloud controller's main database

  **--aok-db**                            Include AOK's database

  **--exclude-aok-db**                    Do not include AOK's database

  **--aok-config**                        Include AOK's configuration 

  **--exclude-aok-config**                Do not include AOK's configuration (default)

  **--stackato-rest-db**                  Include Stackato Rest's database

  **--exclude-stackato-rest-db**          Do not include Stackato Rest's database

  **--filesystem**                        Include the filesystem service

  **--exclude-filesystem**                Do not include the filesystem service

  **--exclude-filesystem-data**           Do not include the filesystem service's user data

  **--exclude-filesystem-user-creation**  Do not include the filesystem service's user creation/quota

  **--harbor**                            Include the harbor service

  **--exclude-harbor**                    Do not include the harbor service

  **--exclude-harbor-data**               Do not include the harbor service's user data

  **--exclude-harbor-metadata**           Do not include the harbor service's metadata

  **--mysql**                             Include the MySQL service

  **--exclude-mysql**                     Do not include the MySQL service

  **--exclude-mysql-data**                Do not include the MySQL service's data

  **--exclude-mysql-metadata**            Do not include the MySQL service's metadata

  **--postgresql**                        Include the PostgreSQL service

  **--exclude-postgresql**                Do not include the PostgreSQL service

  **--exclude-postgresql-data**           Do not include the PostgreSQL service's data

  **--exclude-postgresql-metadata**       Do not include the PostgreSQL service's metadata

  **--mongodb**                           Include the MongoDB service

  **--exclude-mongodb**                   Do not include the MongoDB service

  **--exclude-mongodb-data**              Do not include the MongoDB service's data

  **--exclude-mongodb-metadata**          Do not include the MongoDB service's metadata

  **--memcached**                         Include the memcached service

  **--exclude-memcached**                 Do not include the memcached service

  **--exclude-memcached-data**            Do not include the memcached service's data

  **--exclude-memcached-metadata**        Do not include the memcached service's metadata

  **--redis**                             Include the Redis service

  **--exclude-redis**                     Do not include the Redis service

  **--exclude-redis-data**                Do not include the Redis service's data

  **--exclude-redis-metadata**            Do not include the Redis service's metadata

  **--rabbit**                            Include the RabbitMQ service

  **--exclude-rabbit**                    Do not include the RabbitMQ service

  **--exclude-rabbit-data**               Do not include the RabbitMQ service's data

  **--exclude-rabbit-metadata**           Do not include the RabbitMQ service's metadata

  **--rabbit3**                           Include the RabbitMQ service

  **--exclude-rabbit3**                   Do not include the RabbitMQ service

  **--exclude-rabbit3-data**              Do not include the RabbitMQ service's data

  **--exclude-rabbit3-metadata**          Do not include the RabbitMQ service's metadata



----


.. _kato-command-ref-data-repair-routes:

**data** **repair** **routes** [**options**]

  Detect and fix issues in the cloud controller database routes:
  - Fix leading dots
  - Fix duplicate prefix
  
  After a legacy import, some apps ended up having routes with a leading '.' 
  which is invalid. These routes were not present in the source cluster.

  **-h** **--help**                       Show help information

  **-n** **--dry-run**                    Show problematic routes, but don't change

  **-y** **--no-prompt**                  Convert all with no prompting

  **-v** **--verbose**                    Be verbose

  **-q** **--quiet**                      Be quiet



----


.. _kato-command-ref-debug-configwatch:

**debug** **configwatch** [**options**] [*<process-name>...*]

  Watch changes to cluster config

  **-d** **--dump-tree**                  Dump the config tree seen since starting

  **-s** **--no-value**                   Do not print the value of path



----


.. _kato-command-ref-debug-redis:

**debug** **redis**

  Connect to the Redis server used for cluster config via redis-cli


----


.. _kato-command-ref-history:

**history** [**--help**] [**-n** *<node-IP>*] [**--json**]

  Show the kato commands that have been run

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Get command history from a specific cluster node

  **-j** **--json**                       Output as JSON



----


.. _kato-command-ref-info:

**info** [**--help**] [**-n** *<node-IP>*] [**--json**] [**--yaml**]

  Show information about this node or cluster including assigned and
  available roles.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Show info on a specific cluster node

  **-j** **--json**                       Output as JSON

  **-y** **--yaml**                       Output as YAML



----


.. _kato-command-ref-inspect:

**inspect** [**options**]

**inspect** [**options**] [**all**]

**inspect** [**options**] **group** *<group-name>*

**inspect** [**options**] **tests** *<test-name>...*

**inspect** [**options**] **list**

  Detect common problems with your Stackato install using 'kato inspect'
  
  To run all tests, run:
    kato inspect
  To use a specific group of tests, run:
    kato inspect group <name of group>
  To run specific tests, run:
    kato inspect tests <test1> <test2> <test3>
  To list available tests, run:
    kato inspect list

  **-h** **--help**                       Show help information

  **-v** **--verbose**                    Verbose output



----


.. _kato-command-ref-license:

**license** **set** [**options**] [*<value>*]

**license** **enable**

**license** **disable**

  Set the Stackato license in use for this microcloud or cluster.

  *<value>*                               The license to use; if not given then it is read from STDIN


  **-h** **--help**                       Show help information



----


.. _kato-command-ref-log-drain-add:

**log** **drain** **add** [**options**] *<name>* *<uri>* [*<param>...*]

  Add a new log drain.
  
  Examples:
  
    # Add a drain to receive system logs
    
    kato log drain add system_splunk udp://logs.splunk.com:1234/
    
    # Add a drain to forward all application and system logs as json
  
    kato log drain add -f json -p apptail,systail app_sys_splunk \
      udp://logs.splunk.com:1235/
    
    # Add a drain with a custom or named format,
    
    kato log drain add -f "{{.Name}}: {{.Text}}" system_splunk_2 \
      udp://logs.splunk.com:1236/
    kato log drain add -f systail-syslog system_splunk_2 \
      udp://logs.splunk.com:1236/
  
    # Passing custom parameters to a drain
  
    kato log drain add mydrain redis://localhost:6379 key=logdata 

  **-h** **--help**                       Show help information

  **-f** **--format** *<format>*          Message format

  **-p** **--prefix** *<prefix>*          Message key prefix; possible values: systail, event, apptail (comma-separated, no spaces)



----


.. _kato-command-ref-log-drain-delete:

**log** **drain** **delete** [**options**] *<name>*

  Delete a drain

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-log-drain-list:

**log** **drain** **list** [**options**]

  List all log drains

  **-h** **--help**                       Show help information

  **-y** **--yaml**                       Output at YAML

  **-j** **--json**                       Output at JSON



----


.. _kato-command-ref-log-drain-status:

**log** **drain** **status** [**options**] [*<drain>...*]

  Show the status of all or specified log drains

  **-h** **--help**                       Show help information

  **-n** **--not-running**                Show only drains not running

  **-y** **--yaml**                       Output at YAML

  **-j** **--json**                       Output at JSON



----


.. _kato-command-ref-log-stream:

**log** **stream** [**options**] *<key>...*

  Examples:
  
    # stream cloud events
    
    kato log stream event
  
    # stream DEA and app log stream
    
    kato log stream systail.dea systail.stager apptail
  
    # stream system logs (equivalent to 'kato log tail')
    
    kato log stream systail

  *<key>*                                 Logyard stream key prefix (eg: systail.dea)


  **-h** **--help**                       Show help information

  **--no-color**                          Turn off color

  **--raw**                               Show unformatted logs, including logyard INFO records (skipped by default)

  **--json**                              Show the original JSON

  **--time**                              Show timestamp

  **-n** **--node** *<node-IP>*           Only show logs from a specific cluster node

  **-l** **--local**                      Only show logs from the current node



----


.. _kato-command-ref-log-tail:

**log** **tail** [**options**] [*<component>...*]

  *<component>*                           Can be a process name, role name or role group name


  **-h** **--help**                       Show help information

  **--no-color**                          Turn off color

  **--raw**                               Show unformatted logs, including logyard INFO records (skipped by default)

  **--time**                              Show timestamp

  **-n** **--node** *<node-IP>*           Only show logs from a specific cluster node

  **-l** **--local**                      Only show logs from the current node



----


.. _kato-command-ref-node-attach:

**node** **attach** [**options**] *<core-ip>*

  Attach this node to a stackato core node

  **-h** **--help**                       Show help information

  **-e** **--enable** *<roles>*           Enable the specified roles (comma-separated, no spaces)

  **-s** **--no-start**                   Do not auto start processes

  **-v** **--verbose**                    Show process information when starting/stopping roles

  **-f** **--force**                      Forces this node to attach to a core node, ignoring any version mismatches



----


.. _kato-command-ref-node-availabilityzone:

**node** **availabilityzone** [**options**] [*<zone>*]

  Gets/sets the availability zone on a node.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-id>*           Sets the availability zone on the specified DEA node, local node is used if not specified



----


.. _kato-command-ref-node-detach:

**node** **detach** [**options**]

  Detach this node from a stackato core node

  **-h** **--help**                       Show help information

  **-s** **--start**                      Automatically start processes after detaching

  **-v** **--verbose**                    Show process information when starting/stopping roles



----


.. _kato-command-ref-node-list:

**node** **list** [**options**]

  List all nodes known to this cluster

  **-h** **--help**                       Show help information

  **-j** **--json**                       Use JSON format for displaying output

  **-y** **--yaml**                       Use YAML format for displaying output



----


.. _kato-command-ref-node-migrate:

**node** **migrate** *<old-node-IP>* *<new-node-IP>*

  Migrate the node configuration from old node to a new node

  **-h** **--help**                       Show help information

  **-r** **--no-restart**                 Do not restart roles after migration



----


.. _kato-command-ref-node-placementzones-add:

**node** **placementzones** **add** [**options**] *<zone>*

  Adds a DEA zone to the current node.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-id>*           Add a zone on the specified DEA node, local node is used if not specified



----


.. _kato-command-ref-node-placementzones-list:

**node** **placementzones** **list** [**options**]

  Lists the DEA zones on the current node.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-id>*           Add a zone on the specified DEA node, local node is used if not specified



----


.. _kato-command-ref-node-placementzones-remove:

**node** **placementzones** **remove** [**options**] *<zone>*

  Removes a DEA zone from the current node.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-id>*           Remove a zone on the specified DEA node, local node is used if not specified



----


.. _kato-command-ref-node-reattach:

**node** **reattach** [**options**] *<core-ip>*

  Run this when the core node's IP changes.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-node-remove:

**node** **remove** [**--skip-detach**] *<node-IP>...*

  Remove the node(s) from the cluster

  **-h** **--help**                       Show help information

  **-s** **--skip-detach**                Skips updating the removed nodes config via detaching the node, only use this if the node has already been destroyed



----


.. _kato-command-ref-node-rename:

**node** **rename** [**options**] *<hostname>*

  **-h** **--help**                       Show help information.

  **-s** **--skip-remap-hosts**           Skip the remapping of existing app URLS to the new domain.

  **-l** **--skip-ssl-regeneration**      Skip regenerating the SSL keys

  **-r** **--no-restart**                 Do not restart roles.

  **-v** **--verbose**                    Show process information when restarting roles.



----


.. _kato-command-ref-node-reset:

**node** **reset** **factory**

**node** **reset** **docker**

**node** **reset** **services**

**node** **reset** **--help**

  Reset the Stackato VM to its default configuration.
  
  * factory: returns the VM to its state prior to first boot.
  * docker: removes all docker containers, and deletes all but the Stackato
    release images; not meant for general use.
  * services: removes all service data; not meant for general use.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-node-retire:

**node** **retire** [**options**]

  Gracefully retires a DEA node from the cluster. New instances of the
  apps are started on other available DEAs before the retiring DEA is shut
  down. 

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-id>*           Retire the specified DEA node, local node is used if not specified



----


.. _kato-command-ref-node-setup-core:

**node** **setup** **core** [*<endpoint>*]

**node** **setup** **core** **--help**

  Configure the core node of your Stackato cluster

  **-h** **--help**                       Show help information

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-node-setup-firstuser:

**node** **setup** **firstuser** [**options**] *<email>* *<org>*

  First user setup.

  *<email>*                               First user's email.

  *<org>*                                 First user's organization.


  **-h** **--help**                       Show help information

  **-p** **--password** *<password>*      First user's password. If your unix password has not been updated, then your unix password will be updated to this. Will be prompted for if not given.

  **-u** **--username** *<username>*      First user's username. Will be the provided email if not given.

  **-s** **--space** *<space>*            First user's initial space. If not specified, user will not initially be in a space.



----


.. _kato-command-ref-node-setup-load_balancer:

**node** **setup** **load_balancer** [*<IP>...*] [**--force**]

**node** **setup** **load_balancer** **--help**

  Configure this node as a HTTP/S load balancer

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-node-setup-micro:

**node** **setup** **micro** [**options**] [*<role>...*]

**node** **setup** **micro** **--help**

  Configure this instance as a micro cloud

  **-h** **--help**                       Show help information

  **-d** **--delete**                     Delete old configuration and re-initialize everything

  **-s** **--no-start**                   Do not auto start processes

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-node-update:

**node** **update** [**options**]

  Update IP references in config.

  **-h** **--help**                       Show help information.



----


.. _kato-command-ref-node-upgrade:

**node** **upgrade** [**options**]

**node** **upgrade** **--run-command** *<command>*

  Upgrade the Stackato install to the latest available version, preserving
  deployed applications, config, services, and other state.
  
  Will operate on current node by default; upgrade can be done for the
  entire cluster at once (with --cluster) or for a specific node (with
  --node).

  **-h** **--help**                       Show help information

  **-j** **--json**                       Shows the status in json format.

  **-n** **--node** *<node>*              Targets the provided node.

  **-u** **--update-kato**                Updates kato node upgrade to the latest codebase.

  **-v** **--version** *<version>*        The version of Stackato to upgrade to. The latest version is used if this isn't supplied.

  **--force**                             Forces an upgrade to run.

  **--prepare**                           Prepare the core node for an upgrade.

  **--resume**                            Resumes an upgrade process, used internally by Kato and should only be called manually when requested.

  **--role-order** *<role-order>*         Comma separated list of roles defining the order that roles should be upgraded in a cluster.

  **--skip-confirmation**                 Skips initial confirmation of upgrade.

  **--status**                            Shows the status of upgrades on a node.

  **--development**                       Run a development upgrade (internal use only).

  **--cache-ip** *<cache-ip>*             The ip of the node to act as a cache for all nodes in the cluster during upgrade.

  **--download-only**                     Downloads the files required to perform an upgrade without starting an upgrade, must specify --cache-ip when using this option.

  **--cluster**                           Unused parameter for backwards compatibility.

  **--offline**                           Upgrade offline; requires the upgrade content to be previously downloaded.



----


.. _kato-command-ref-node-version:

**node** **version** [**options**] [*<node-IP>*]

  **-h** **--help**                       Show help information.



----


.. _kato-command-ref-op-custom_ssl_cert:

**op** **custom_ssl_cert** **install** [**options**] *<key-path>* *<cert-path>* *<domain>*

**op** **custom_ssl_cert** **remove** *<domain>*

**op** **custom_ssl_cert** **list**

  Configuration of custom SSL certificates to be used in conjunction with
  router2g and deployed applications.

  **-h** **--help**                       Show help information

  **--wildcard-subdomains**               Wildcard SSL certificate

  **--update**                            Update an existing SSL certificate



----


.. _kato-command-ref-op-defer:

**op** **defer** (*<command>* | **--reset**) [**--run-as-root**] [**--post-start**]

  Defer a kato command to be run (by 'op run_deferred') when the system is
  rebooted and supervisord has started. Commands are saved to a
  /home/stackato/.kato-deferred YAML file.

  **-h** **--help**                       Show help information

  **--run-as-root**                       Run deferred command as root

  **--reset**                             Clear list of deferred commands

  **--post-start**                        Run the deferred command after all processes managed by kato have started



----


.. _kato-command-ref-op-dhcp:

**op** **dhcp**

  Configure this node's networking to use DHCP

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-generate_service_tokens:

**op** **generate_service_tokens**

  Generates auth tokens for services.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-import_from_yaml_file:

**op** **import_from_yaml_file** [**--upgrade**] [**--new-key-file=<file>**] *<process>*

  Import the YAML configuration for a single process, deleting and
  replacing all prior configuration for that process.

  **-h** **--help**                       Show help information

  **--new-key-file=<file>**               Override config with a specific YAML file

  **--upgrade**                           Merge the new configuration rather than deleting and replacing



----


.. _kato-command-ref-op-import_from_yaml_files:

**op** **import_from_yaml_files** [**--upgrade**] [**--new-key-file=<file>**]

  Import configuration from YAML files for all processes, deleting and
  replacing prior configuration.

  **-h** **--help**                       Show help information

  **--new-key-file=<file>**               Override config with a specific YAML file

  **--upgrade**                           Merge the new configuration rather than deleting and replacing



----


.. _kato-command-ref-op-max_client_upload:

**op** **max_client_upload** *<max-size>*

  Set the maximum upload size in MB from stackato clients

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-regenerate:

**op** **regenerate** **all** [**--no-restart**] [**--no-prompt**]

**op** **regenerate** **cloud-controller-bulk-api-auth** [**--no-prompt**]

**op** **regenerate** **cloud-controller-client-auth** [**--no-prompt**]

**op** **regenerate** **cloud-controller-db-encryption-key** [**--no-prompt**]

**op** **regenerate** **cloud-controller-staging-auth** [**--no-prompt**]

**op** **regenerate** **mysql** [**--no-prompt**]

**op** **regenerate** **postgresql** [**--no-restart**] [**--no-prompt**]

**op** **regenerate** **ssh_keys** [**--no-prompt**]

**op** **regenerate** **ssl_cert** [**--no-prompt**]

**op** **regenerate** **stackato-rest-auth** [**--no-prompt**]

**op** **regenerate** **stackato-router-auth** [**--no-prompt**]

**op** **regenerate** **token-signing-secret** [**--no-prompt**]

  Regenerate the configuration for various processes and components

  **-h** **--help**                       Show help information

  **-n** **--no-prompt**                  Show help information

  **-r** **--no-restart**                 Do not restart processes.



----


.. _kato-command-ref-op-remap_hosts:

**op** **remap_hosts** *<old-hostname>* *<new-hostname>*

  Change the fully qualified basename (i.e. the default shared domain) in
  the URLs of hosted applications. Used when renaming the system or
  migrating user applications to a new system.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-run_deferred:

**op** **run_deferred** [**--post-start**]

  Runs deferred commands saved with 'kato defer'

  **-h** **--help**                       Show help information

  **--post-start**                        Run the deferred command after all processes managed by kato have started



----


.. _kato-command-ref-op-set_timezone:

**op** **set_timezone** [**--timezone** *<TZ>*]

  Change the default system timezone for the host machine

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-static_ip:

**op** **static_ip** [**--interface=<if>**] [**--ip=<ip>**] [**--netmask=<netmask>**] [**--gateway=<gateway>**] [**--dns-nameservers=<dnsname>**] [**--dns-search-domains=<dnssearch>**] [**--restart-network**] [**--no-restart**]

  Configures this node to use a static IP. Interactively prompts for
  inputs if they are not specified as options.

  **-h** **--help**                       Show help information

  **--interface=<if>**                    Network interface to configure (e.g. eth0)

  **--ip=<ip>**                           Host IP address

  **--netmask=<netmask>**                 Network netmask (e.g. 255.255.255.0)

  **--gateway=<gateway>**                 Network gateway (IP address)

  **--dns-nameservers=<ips>**             Optional list of DNS names servers (e.g. 10.0.0.252, 10.0.0.253)

  **--dns-search-domains=<domains>**      Optional list of DNS search domains (e.g. example.com, example.org)

  **--restart-network**                   Restart networking

  **--no-restart**                        Do not restart processes.



----


.. _kato-command-ref-op-update_hostsfile:

**op** **update_hostsfile**

  Updates the /etc/hosts file with the endpoint URI mapped to the cloud
  controller's internal IP.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-op-upstream_proxy:

**op** **upstream_proxy** **set** *<proxy-address>* [**options**]

**op** **upstream_proxy** **delete**

  Configure Stackato to use an external or upstream proxy server for
  staging and deployed apps.

  **-h** **--help**                       Show help information

  **-u** **--user** *<user>*              Proxy username

  **-p** **--pass** *<pass>*              Proxy password

  **--no-proxy** *<no_proxy>*             Comma separated list of domain names that should bypass the proxy



----


.. _kato-command-ref-patch:

**patch** **status** [**options**]

**patch** **install** [**--node** *<nodeip>*] [**options**]

**patch** **install** [**--node** *<nodeip>*] [**options**] *<patchname>*

**patch** **reset** [**--node** *<nodeip>*] [**options**]

**patch** **update** [--node <nodeip> | --local]

**patch** **mark** [**--node** *<nodeip>*] [**options**] *<patchname>*

**patch** **reinstall** [**--node** *<nodeip>*] [**options**] *<patchname>*

**patch** **revert** [**--node** *<nodeip>*] [**options**]

**patch** **revert** [**--node** *<nodeip>*] [**options**] *<patchname>*

  Update a Stackato cluster with post-release fixes.

  **-h** **--help**                       Show help information

  **-a** **--all**                        Show status for all patches

  **-l** **--local**                      Only affect this node (otherwise operates on entire cluster)

  **-n** **--node** *<nodeip>*            Only affect specified node

  **-r** **--no-restart**                 Don't restart any roles during patching

  **-q** **--quiet**                      Be quieter

  **-j** **--json**                       Return JSON (for 'status')

  **-i** **--installed**                  Manually mark patch as installed

  **-d** **--notinstalled**               Manually mark patch as not installed

  **-m** **--manifest** *<manifest>*      Specify a custom manifest file

  **-u** **--force-update**               Force a new manifest to be downloaded

  **-s** **--single**                     Remotely install single patch (internal use only)

  **--to-patch-id** *<patch-id>*          Specify the id of the patch to patch the cluster up to. Patches above this ID will not be applied



----


.. _kato-command-ref-process-list:

**process** **list** [**options**] [*<process>...*]

  Lists configured processes and their current running status.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Get status for a specific cluster node (defaults to local node)

  **-c** **--cluster**                    Includes process status over all cluster nodes

  **-j** **--json**                       Use JSON format for displaying output

  **-y** **--yaml**                       Use YAML format for displaying output



----


.. _kato-command-ref-process-ready:

**process** **ready** [**options**] *<process>*

  **-h** **--help**                       Show help information

  **-b** **--block** *<seconds>*          Block until ready, for max <seconds> seconds. If <seconds> is 0, then block forever

  **-n** **--node** *<node-IP>*           Check process on a specific cluster node



----


.. _kato-command-ref-process-restart:

**process** **restart** [**options**] [*<process>...*]

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Restart process on a specific cluster node

  **-c** **--cluster**                    Restarts process on all nodes in the cluster



----


.. _kato-command-ref-process-start:

**process** **start** [**options**] [*<process>...*]

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Start process on a specific cluster node



----


.. _kato-command-ref-process-stop:

**process** **stop** [**options**] [*<process>...*]

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Stop process on a specific cluster node



----


.. _kato-command-ref-relocate:

**relocate** [**options**] **containers** *<new_location>*

**relocate** [**options**] **droplets** *<new_location>*

**relocate** [**options**] **services** *<new_location>*

  Move containers, application droplets, or services to a new mount point
  or filesystem location.

  **-h** **--help**                       Show help information

  **-v** **--verbose**                    Verbose output



----


.. _kato-command-ref-report:

**report**

**report** **--node** *<node-IP>*

**report** **--cluster**

**report** **--help**

  Generate a report that can be sent to Stackato support.

  **-h** **--help**                       Show help information

  **-c** **--cluster**                    Gather reports from entire cluster into one tarball

  **-n** **--node** *<node-IP>*           Gather report from a specific cluster node



----


.. _kato-command-ref-restart:

**restart** [**options**] [*<role>...*]

**restart** **--help**

  Restart Stackato or individual roles.

  **-h** **--help**                       Show help information

  **-n** **--node** *<node-IP>*           Restart a specific cluster node

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-role-add:

**role** **add** **--help**

**role** **add** [**-v**] [**--node** *<node-IP>*] [**--no-start**] *<role>...*

**role** **add** [**-v**] [**--node** *<node-IP>*] [**--no-start**] **--all**

**role** **add** [**-v**] [**--node** *<node-IP>*] [**--no-start**] **--all-but** *<role>...*

**role** **add** [**-v**] [**--node** *<node-IP>*] **--only** *<role>...*

  Enable roles on a node

  **-h** **--help**                       Show help information

  **-a** **--all**                        Enable all available roles

  **-b** **--all-but**                    Enable all available roles except these

  **-o** **--only**                       Enable only these roles, while disabling others

  **-n** **--node** *<node-IP>*           Add a role on a specific cluster node

  **-s** **--no-start**                   Do not start processes

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-role-info:

**role** **info** **--help**

**role** **info** [*<role>...*]

  Display info on roles

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-role-remove:

**role** **remove** **--help**

**role** **remove** [**-v**] [**--node** *<node-IP>*] *<role>...*

**role** **remove** [**-v**] [**--node** *<node-IP>*] **--all**

**role** **remove** [**-v**] [**--node** *<node-IP>*] **--all-but** *<role>...*

  Disable roles for a node

  **-h** **--help**                       Show help information

  **-a** **--all**                        Disable all available roles

  **-b** **--all-but**                    Disable all available roles except these

  **-n** **--node** *<node-IP>*           Remove a role on a specific cluster node

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-shell:

**shell** [**--help**]

  Interactive shell for kato

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-start:

**start** [**options**] [*<role>...*]

**start** **--help**

  Start Stackato or individual roles.

  **-n** **--node** *<node-IP>*           Start a specific cluster node

  **-e** **--ephemeral**                  Try not to regenerate/modify any config items

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-status:

**status** [**options**]

  List configured roles and their current status across the cluster.

  **-h** **--help**                       Show help information

  **-a** **--all**                        Show all roles, including roles not configured on cluster

  **-j** **--json**                       Use JSON format for displaying output.

  **-y** **--yaml**                       Use YAML format for displaying output.



----


.. _kato-command-ref-stop:

**stop** [**options**] [*<role>...*]

**stop** **--help**

  Stop Stackato or individual roles.

  **-n** **--node** *<node-IP>*           Stop a specific cluster node

  **-v** **--verbose**                    Show process information



----


.. _kato-command-ref-version:

**version** [**--help**]

  Display the version of Stackato being run.

  **-h** **--help**                       Show help information



----


.. _kato-command-ref-end:




