.. -*- rst -*-
..
.. This file is in reStructuredText format. For markup overview, see
.. http://sphinx.pocoo.org/rest.html
..
.. Changes except "Internal" can be made available in the release
.. notes. Changes not directly related to Stackato itself (eg: VM) should
.. be listed in its own section.

.. _release-notes:

Release Notes
=============

.. only:: not public

  See `release-notes.rst` in git for the up-to-date version of this file.
        `<https://github.com/ActiveState/stackato-doc>`_

v3.4.1 (July 29, 2014)
----------------------

* New Features

  * :ref:`App Versions <app-versions>`: User application updates now tracked with versions for easier rollback.
  * :ref:`Admin Buildpacks <add-buildpack>`: Administrators can now easily add custom buildpacks to the system.
  * [103539] Stackon subsystem for Docker-based Stackato add-ons
  * [99935] IP based ACL for the Router
  * [104414] New Stackato Micro Cloud License Agreement allowing clusters up to 20GB with a free license key
  
* Enhancements & Updates

  * Upgraded Docker to 1.0
  * New upgrade back end for ``kato node upgrade`` (Sentinel)
  * Several system processes (e.g. AppStore and Redis)now running in Docker containers.
  * [103658] Logyard communication faster - using Unix domain sockets instead of TCP loopback.
  * [103789] Upgraded gnatsd to 0.5.2.
  * [101897] zeromq 3.2.4 for loygard/appstore
  * [103674] Custom AOK endpoint URLs
  * [103908] Upstream merge of Cloud Foundry sources

* Application Stack Changes

  * [103517] git 2.0.1
  * [103301,104488] Upgraded to ActivePython 2.7.8.10 and 3.3.4.1
  * npm 1.4.20 for Node 0.8
  * [104164] Include prereqisites for 2.10.x import
  * [104401] Added libevent-dev and libffi-dev
  * Improved sshd logging
  * [103130] App containers should have a ``stackato`` client

* Bug Fixes

  * Management Console

    * [102977] Can't issue patches to web console
    * [103892] Patch notification box should not be coloured red when no patches are available
    * [104176] The App Store application install button doesn't disappear when no app store urls exist
    * [104026] Status: 400 error while inputting symbols in the search bar
    * [103579] Deleting timeline comment throws an error
    * [103605] UI displays no route for apps deployed from app store
    * [104012] Application > Summary > Memory Usage: Should be Bright red if over capacity
    * [103934] App summary screen: memory usage is counted for all stored droplets, not just the current one
    * [104021] Search bar on cluster management is confusing
    * [102716] Top bar re-design
    * [102966] Add quota usage dashboard to org view
    * [102949] Consistent search and filtering controls
    * [102369] Show available patches and major updates 
    * [102718] Filterable App Store
    * [103739] OEM white lable customization improvements
    * [102963] Consistent terminology and language
    * [104169] Web UI errors with LDAP admin group
    * [103768] adding/deleting repo create duplicate "Allowed Repos" div
    * [104274] User Provided Service causes error when viewing app in console - 110003 - service plan could not be found
    * [104466] Timeline: Deactivate the preview button when the content is cleared
    * [99801] Internationalization efforts
    * [96728] Browser layout bugs on small viewports
    * [103313] App store deployment fails - Response: undefined
    * [101682] App Store  sorting is confusing
    * [104391] Add a "view app" icon to Applications page
    * [104292] Cannot change app in timeline
    * [104058] Deploy app space dropdown list shows blank
    * [104322] Load custom styles before displaying "Loading" view
    * [104275] Drilling down on user provided services in web console loads no data
    * [104262] Update German translations
    * [103685] Apps list shows apps as "STARTED" when they are not
    * [103736] Clicking alerts goes to a page where there appears to be no problem
    * [104116] When admin alerts clear, the user dropdown in the header stops working
    * [103779] Router stats counter grows out of bounds
    * [97540] App Store install progress window is not scrollable
    * [103486] Cannot deploy apps to the desired org/space if there are more than 50 orgs/spaces in the drop down list
    * [104457] cannot input tag in timeline on organization page
    * [104397] App Store Deploy fields marked as required or optional
    * [104298] User Provided Service Instances not displayed in Services list
    * [104503] api endpoint cut off on cluster management screen
    * [102146] Add an Application menu option for a developer
    * [103599] Add bootstrap-accessibility JS lib
    * [102920] Let users know that timeline posts/comments are in markdown
    * [103602] Cannot create a timeline event for individual apps in the drop down list
  
  * kato

    * [103642,103657,103680] Fixed issues with ``kato relocate`` commands
    * [103763] ``kato node setup micro --no-start`` silently fails
    * [103719] ``kato`` always returns 0 exit code due to tee'ing the output
    * [103869] ``kato data import`` of app fails and halts import
    * [103824] ``kato node reset factory`` leaves VMs in a corrupt state
    * [103919] ``kato relocate containers`` failing - Device or resource busy
    * [102928] ``kato node rename`` hangs waiting for password
    * [102768] ``kato restart`` on core node causes issues on other nodes
    * [103905] ``kato op max_client_upload`` fails while restarting cc_nginx - undefined method \`join' for "cc_nginx":String (NoMethodError)
    * [103310] ``kato node reset soft`` has been removed
    * [103945] ``kato process ready --block`` does not actually timeout as expected
    * [97785] Refactor usage and cmd.rb files for kato commands with >3 sub-commands
    * [103906] ``kato op set_timezone`` not updated to use docker
    * [103675] ``kato data import`` ignores manifest.yml
    * [104238] docker daemon log should be in ``kato report``
    * [103876] ``kato log tail`` drain should use UDP instead of TCP
    * [103823] Intermittent failure of ``kato patch`` when fetching patch manifest from get.stackato.com
    * [103969] ``kato patch status --json`` error
    * [103676] ``kato data import`` doesn't always detect worker apps without a URL
    * [104469] ``kato node rename`` crashing
    * [104158] Patch state lost in micro -> node/core change
    * [101788] Audit API for validation of input
    * [101416] Add ``--upgrade option`` to ``kato op import_from_yaml_files``
    * [103788] ``kato status`` hangs and stacktraces when a node goes offline
    * [104273] ``kato node retire -n <node>`` hangs, apparently waiting for a sudo password
    * [104078] ``kato report`` broken after 3.2.1 -> 3.4.1 upgrade
    * [103821] ``kato inspect`` returns 'Docker configuration isn't valid Can't locate docker image :latest'
    * [104093] ``kato node upgrade --skip-confirmation`` does not skip confirmation
    * [103744] The Kato::Info restricted field is always set to true
    
  * Upgrades & Migrations

    * [103720] ``kato node upgrade`` remote upgrades not re-throwing exceptions after creating upgrade-failed flat file.
    * [103921] Upgrade to 3.2.1 fails during role restart
    * [104403] Legacy import must ignore the app-dir in stackato.yml
    * [104374] Import fails if the app name contains an underscore
    * [104400] Apps with an empty manifest.yml are not being imported
    * [104405] Higher timeout for app import
    * [104360] Legacy import of standalone apps crashes
    * [103687] Upgrade failure with multiple CC's and cc_jobs process
    * [104315] Can't login to console after upgrade to 3.4.1
    * [103305] Upgrades fail to work through proxy
    * [103742] Check 'urls' in addition to 'url' to determine the default route
    * [104402] Legacy import ignores environment variables
    * [104216] Docs: Limitations of legacy import
    * [103501] Improve upgrade output for end users
  
  * Logyard:

    * [104002] Staging has missing and duplicated lines
    * [103948] Restarting apptail doesn't tail existing apps unless they are restarted
    * [103107] App and system log stream improvements
    * [100913] Logyard drains targetting harbor services don't reconnect
    * [97378] Improve ``stackato logs`` using websockets
    * [104175] Kato custom log drains result in "MISSING"
    * [103790,103958] Split long lines of ``kato log tail`` and app log streams 
    * [103150] apptail message not clear when dropping loglines
    * [103511] Fixed error colors in log tail
    * [103839] apptail rate throttling improvement
    * [103625] ERROR decoding json from a message with key
    * [104173] Legacy importer fails to remap services correctly when multiple services of the same name exist
    * [103108] cloud events occurring out of order in the app log stream
    * [103143] Improve apptail rate throttling

  * Security:

    * [103749] AOK: Apps can map the route aok.<system domain>
    * [104192] Fixed open redirect in AOK
    * [104280] Secure key regeneration using ``kato op regenerate ...``
    * [103522] Reflected XSS vulnerability
    * [104020] Locked down supervisord
    
  * Router
  
    * [104244] More detailed docs on ``prevent_x_spoofing`` router2g configuration with load balancers
    * [100770] Router file handle leak; systail inotify instances leak
    * [103944] Websocket issues
    * [103918] dispatchWebSocketErr function and terminate socket to allow long polling fallback for the clients

  * Staging & Legacy Buildpack
  
    * [104369] Import of legacy apps with mangled manifest.yml fails
    * [103600] Grails apps use different home directory in 3.2 (legacy buildpack) than they did in 2.10
    * [103699] pre-running hooks for imported legacy apps running too early
    * [103922] Don't setup STACKATO_HARBOR_* variables during staging
    * [103333] Docs: Procfile support
    * [103618] Docs: Client app config option ``--health-timeout`` and stackato.yml/manifest.yml support
    * [101636] Ability to set a custom npm registry blocked by staging plugin
    * [102356] Some buildpacks may not work with proxies
  
  * AOK (Authentication)

    * [104299] LDAP error on invalid characters
    * [103886] Login info endpoint 500
    * [102008] Buildpack assets should be cached
    
  * Misc:
  
    * [104247] Improved documentation on configuring https proxies
    * [104270] Fix "vendor_version" information of /info endpoint
    * [103549] Org managers unable to create spaces
    * [101009] Eclipse CFv2 plugin doesn't work with Stackato3
    * [104371] Incorrect redirect URI error after enabling application SSO
    * [103665] Assigning parent domain to org breaks CC_NG
    * [104326] Increase upload limit from 0.5GB to 1.5GB
    * [104114] Update to the new CF exception style in CCNG
    * [103320] Issues installing oracledb service in 3.2.1
    * [104141] Cannot create first user in multiple CC cluster - An unknown error occurred (10001)
    * [103830] Configurable http_proxy for appstore
    * [102399] supervisord pid problem with sudo
    * [103693] Documentation on buildpack Procfiles
    * [103895] Merge Cloud Controller changes from upstream
    * [102679] Allow admins to modify/theme the Client name
    * [103689] Implement lazy docker registry for sent
    * [99952] Upgrade rollback
    * [103462] Fix application instance downscaling
    * [103942] Cannot ssh to failed containers
    * [103727] Instructions for updating docker image are incorrect
    * [104153] Document container network security access options in fence
    * [103529] If fence/dea fails, report it in the app log stream
    * [103723] Default min_instances field not set
    * [103937] Account for missing /dev/fd when using docker 0.11.1+
    * [103836] Fence should report CPU usage scaled per core
    * [103399] Make fence delegate to Docker for memory limit
    * [100953] No error given with malformed app store yaml file
    * [103679] Docs: Updated notes on url generation in the client.
    * [103712] App push: Error 10001: undefined method \`include?' for nil:NilClass (500)
    * [103184] Autoscaling: Respond to large changes in average CPU more quickly
    * [103952] cloud_controller_uploads_access.log not rotating properly
    * [104344] Docs: Architecture diagram out of date
    * [103668] Autoscaling: Each app needs its own heartbeat counter
    * [103059] ``kato data import/export`` cannot clearly delete the previous first admin account
    * [102689] core node does not recognize elasticsearch custom plug-in
    * [104171] Document required apt repo to install additional PHP modules
    * [102487] Fix docs for app_https_proxy
    * [103528] load balancer not working post-upgrade
    * [103638] Docs: Links to any cloudfoundry.com URL are broken
    * [102793] Unicode in app description causes 500 error
    * [101282] Switch back to using upstream cloudfoundry/cf-uaa-lib
    * [98824] Check for ~/.stackato-firstboot-error in the MOTD
    * [103391] Connect to local harbor-redis instance on non-loopback address.
    * [104060] SESSION_AFFINITY prevents logins to the webconsole
    * [103677] Failed to create an instance of the elasticsearch service
    * [103606] JAVA_OPTS not passed into CF Java buildpack
    * [99109] API for all apps by group with all instances and instance usage
    * [104199] Fix missing Harbor metadata in a cluster import, when the harbor node is not import-local
    * [104340] service_bindings_url is incorrect for UPSIs
    * [104311] Regenerate cc api docs
    * [101350] Invalid bearer token: #<CF::UAA::InvalidTokenFormat: Not enough or too many segments
    * [104424] stackato-tty only shows partial version number
    * [97938] mssql service is not created during IronFoundry setup script
    * [102029] Firstboot rename does not catch non-zero exits from kato node rename

  * Stackato CLI client updated to 3.1
  
    * [104254] ``stackato tunnel`` fails against 3.2 server
    * [102774] Client hangs after ``target`` on Windows
    * [103099] Some client commands extremely slow past a certain number of users
    * [104052] Update test suite info for external users
    * [103899] Client always explodes \*.war files
    * [104203] The quota attribute 'trial_db_allowed' cannot be set anymore.
    * [104225] Use a URL to specify the buildpack in create-buildpack
    * [103560] Inconsistent quota handling affects app push
    * [103703] can't find package cmdr::history
    * [104145] client is polling for logs
    * [103586] client asks the user to use map-domain in 3.2+
    * [104389] Trap and ignore broken redirections issued to POST /bits (push, buildpack)
    * [103547] Rephrased help text of "create-user" (aka "register")
    * [103737] Detect and elide html dumps in general (http) error (status 500, etc.)
    * [103588] ``update-service-broker`` should offer to change URL, username & password attributes
    * [104137] Unable to locate service plan matching <service name>
    * [104279] Client needs update-service for user-provided services
    * [103683] Admin status not respected in create-space
    * [104025] ``marketplace`` command
    * [103530] Client reports failed staging for timeout start
    * [103984] Crash with ambiguous options to ``stackato delete``
    * [103786] ``trace`` outputs garbage characters
    * [104415] Failure to delete services
    * [103578] Client should display URLs with https://
    * [104120] ``stackato buildspacks`` display bug
    * [102411] CLI help output does not show binary name
    * [103866] `` curl`` is hardcoded to always request /info
    * [103562] Remove --distribution-zone in the list of ``stackato help push``
    * [104150] ``stackato user-info`` is broken for non admin user
    * [101377] Stackato client commands returning Error 306
    * [103555] ``--space`` option is strictly enforced with ``--no-prompt`` but not without
    * [103947] ``logs -f`` alias for ``logs --follow``
    * [103597] Org manager can't unlink or change org user roles with client
    * [103590] Support raw PUT data with ``stackato curl``
    * [103853] ``stackato services`` fails against 3.0.1
    * [103924] Need a ``--droplets`` option for ``quota create`` and ``quota configure``
    * [103684] ``stackato logs --tail`` does not stream the logs
    * [104370] Client defaults to zero for quota values not explicitly set, should default to a useful value
    * [103713] Incomprehensible space-base error message
    * [103774] ``stackato tunnel`` fails with error - got keep-zip, expected parameter name
    * [104016] ``stackato push --as ...`` does not work without stackato.yml
    * [103900] Client should use the new logs API (websocket)
    * [103662] Added cli option --domain, in parallel to the 'domain' manifest key.
    * [103854] client help --json output broken in 3.0.8
    * [104098] Unhelpful error for ``delete-service`` as admin
    * [103587] Crash on v2 broker ``service --json`` / credentials field missing from ``services`` output
    * [103581] Implement 'service-plan-visibility {public, private}'
    * [103576] Issues with domains on orgs without spaces
    * [103507] Add health_check_timeout setting during ``stackato push``
    * [103286] Add a ``history`` command 
    * [103912] Add a ``--code-only`` option to ``stackato rollback``
    * [102364] Specify .war file with ``push --path`` 
    * [103751] Implement {create,delete}-shared-domain <domain>
    * [103845] ``open`` should deduce the app name from the directory name
    * [103554] Use the same *-service-broker nomenclature as the cf client
    * [104291] ``files`` gives "~" rather than "~/app"
    * [104323] Changes to ``service-plans`` and ``help service-plan`` output
    * [103700] Don't warn for hooks::legacy-running key in stackato.yml and manifest.yml
    * [104383] ``create-buildpack`` - support directory as source of the BP (auto-create zip for upload)
    * [102848] Add support for admin buildpacks to commandline client


v3.2.1 (March 31, 2014)
-----------------------

* New Features

  * :ref:`Placement Zones <dea-zones-placement>`
  * :ref:`Availability Zones <dea-zones-availability>`
  * :ref:`Application auto-scaling <app-autoscaling>`
  * :ref:`Application Single Sign-On <application-sso>`
  * :ref:`Cluster Usage view <console-dashboard>`  

* Enhancements & Upgrades

  * Several UX improvements in the Managment Console
  * Improved :ref:`application distribution <architecture-dea>`
  * Upgraded Docker to 0.7.6
  * Upgraded Go to 1.2 (for logyard, appstore, appmdns)
  * Improved ``kato node upgrade`` to handle interruptions
  * [102771] New app events (eg: crash) added to the application log stream
  * [102406] ``kato node reset`` now resets services data
  * [102336] Added ``kato op regenerate ssh-keys``
  * [102916] Specify a 'default' org and space for new logins
  * [102511] Merge with latest upstream dea_ng/cloud_controller_ng

* Application Stack Changes

  * New Docker image (stack) naming convention: ``stackato/stack/alsek`` becomes ``stackato/stack-alsek``  
  * [102193] Added logrotate
  * [102755] Removed build-time apt sources
  * [102483] Purged popularity-contest package
  * Upgraded Go to 1.2

* Bug Fixes

  * Management Console
  
    * [102352] Search box broken on Admin -> Services 
    * [102482] Load balancer role should only be enabled via ``kato``
    * [103454] Web UI displays dashboard improperly when default zones are deleted
    * [102714] Sortable list views
    * [103171] Dead click space in green buttons on welcome page
    * [102795] Web UI does not handle unauthorized LDAP group error
    * [102551] Broken links under timeline
    * [102624] User icon no longer a (broken) link for non-admin users
    * [102280] Individual Application page doesn't say what type of service the service is
    * [103212] Showing apps as started while they are still staging
    * [103205] Deleting apps from console with services throws errors
    * [102440] Timeline events leaking between orgs
    * [102189] Non-manager users prompted to create space
    * [102575] Disabled services have check marks under app store
    * [103078] Help text for Space creation on first user setup screen
    * [101989] Add "cd node-env" to "Clone Repo" commands
    * [102518] Hide navbar on smaller screens when user is an admin
    * [102095] Entering an invalid value twice on app settings makes input box disappear
    * [102291] Set window title to default product name/company on first setup
    * [102625] Remove the delete button from the currently logged in user
  
  * kato
  
    * [102661] ``kato node reset`` failing to remove Docker containers/images
    * [102826] ``kato patch`` now respects proxy settings
    * [102983] ``kato op remap_hosts`` fails after import
    * [102406] ``kato node reset`` doesn't delete services
    * [102661] ``kato node reset soft`` ends with bash syntax error
    * [102568] After configuring LDAP, ``kato node reset`` does not change the setting to default
    * [102502] ``kato role add rabbit`` fails to associate with CC (403)
    * [102494] ``kato node remove`` hangs for 2-3 minutes if node is unreachable
    * [102584] kato config per-node
    * [102859] ``kato patch update`` now updates on all nodes by default(``--local`` and ``--node`` to override) 
    * [102226] ``kato status`` crashes when an external node initially becomes unavailable
    * [102353] ``kato op upstream_proxy set`` should prompt to restart DEA, not Stager
    * [102140] Make ``kato node`` remove a batch operation
    * [102167] Better error handling for invalid ``kato`` sub-commands
    * [102297] ``kato attach`` crashes if a unreachable IP address is given
    * [102593] ``kato export`` prompts for password when exporting PostgreSQL service
    * [102591] No error message for adding already existing data-services
    * [102136] Handle node attach error when unable to connect to redis
    * [102676] Staggered ``kato patch`` cluster install
  
  * Logyard:
  
    * [102706] Adding files to log stream with STACKATO_LOG_FILES
    * [103060] Document STACKATO_LOG_FILES in the comprehensive env var list

  * Security:
  
    * [102844] Remove express.bodyParser and use Connect.json instead
    * [103173] XSS vulnerabilities with org names
    * [102483] Remove popularity-contest package from image
  
  
  * Misc:

    * Raised default container process limit (``max_container_processes``) from 50 to 256
    * [102472] dir_server process FATAL on isolated VMs
    * [102660] kato relocate droplets/containers leads to apptail error during push - ERROR -- No valid log files detected for tailing
    * [100412] Cleanup leftover tmp volumes created for appstore containers
    * [100671] Pass configued http(s) proxy to app store deployments
    * [102672] Memory leak in cloud controller
    * [102659] Failure to start DEA node in a cluster 
    * [102670] Breakage in unsupported-runtime-detection patch
    * [102914] Duplicate user creation during import when using LDAP 
    * [102542] v3 reduced fault tolerance in router
    * [102525] Can't map URLs with a subdomain of less than three characters
    * [102243] Builtin Ruby buildpack continues to use Ruby 1.9.3p327
    * [102521] stackato_rest added drain uses loopback IP in cluster setup
    * [102224] Controller crash during repeated client pushes
    * [102572] Random segfaults when pushing ruby app with legacy buildpack
    * [102770] crashed apps are not reported by ``stackato crashes``
    * [102269] maintenance_mode fixed
    * [102334] Java-buildpack doesn't work behind proxy server
    * [102552] Error with LDAP strategy and no email address in LDAP
    * [102365] Legacy Buildpack: PHP apps are not getting a bound url
    * [102340] Incorrect DSN URI / database name field for mongodb
    * [102472] dir_server doesn't work on fully isolated VM
    * [102994] Mapping App URLs section describes 2.10 behavior
    * [102971] ``stackato scp`` docs missing some helpful content
    * [102902] Router appears to not drop downed routes
    * [102556] Add stackato user to docker group  


* Stackato CLI client updated to 3.0.6

  * [102244] Set quota when creating an org
  * [102537] Missing some service broker functions
  * [102760] Add support for application description to CLI (including stackato.yml) 
  * [103160] Client generates bad manifest sometimes
  * [102496] ``stackato apps --all`` doesn't work
  * [101956] ``stackato scp`` should behave more like real scp
  * [102429] Better error messages for entities that do not exist
  * [102519] ``stackato scp appname`` internal error
  * [102752] ``stackato help admin`` too verbose at top level
  * [102412] Renamed client shows "stackato" prompt in shell mode
  * [103098] ``--token-file`` does not create empty token file
  * [102203] ``stackato open`` tries to open "http:///" when the app has no URL
  * [102295] ``stackato open`` command help clarification
  * [102535] ``stackato delete`` logs debug data
  * [102298] Switch to cmdr v1
  * [102190] Stackato v2 commands should have deprecation/"v2" notice
  * [102596] Client error message should be clearer
  * [102459] ``stackato link-user-org`` should not have ``--developer``
  * [102239] ``stackato info`` must show that (v2) is the API version
  * [102529] User spaces being displayed properly
  * [102319] Fixed handling of ``-group`` for Stackato 2.x targets
  * [102585] Default alias delete-service-broker -> remove-service-broker
  * [102954] Cannot access target / Error: can't read "mymap(r1558)": no such element in array
  * [103054] Better scaling of user validation to large number of users
  * [102933] YML file generated by stackato client doesn't create services with proper syntax
  * [102266] Org/space exists error message is not very friendly
  
  


v3.0.1 (December 18, 2013)
--------------------------

* Management Console:

  * Updated Web Console for enhanced user and organization management
  * [100376] Support line breaks in env variables in Web Console
  * [99914] App Store: Apps with missing requirements (e.g. services) have disabled deploy buttons
  * [101029] UI for creating routes and associating them with applications
  * [101031, 101738, 101739, 102081] UI for managing domains
  * [101786] Added route management UI to application view
  * [101840] Update web console browser requirements
  * [101910] App Store offers options for which Domain to push to
  * [101942] Fixed Organization quota usage bar
  * [102013] Prevent deletion of reserved URIs
  * [102023] Removed "Allow non-local URLs" setting. Domains are now attached to Organizations.

* Docker (Containerization):

  * [101853] Upgrade to Docker 0.7
  * [101893] Fix a Docker container memory leak
  * [101772] New naming scheme for app images (stacks)
  * [101813] Added networking tools (net-tools package) in app image
  
* Logyard:

  * [101635] Fix inotify panic in systail
  * [101616] Updated inotify
  * [100670] Avoid camel-case in stream JSON keys
  * [101558] Limit the number of custom app logs
  * [101863,101887] ``max_user_drains`` quota replaced by ``max_drains_per_app``
  
* Kato:
  
  * [101648] ``kato report`` and ``kato cluster`` ``--all`` (``-a``) options changed to ``--cluster`` (``-c``)
  * [101354] Add kato cluster upgrade functionality
  * [102106,101700] Fixes to ``kato node reset``
  * [101798] Fixed ``kato process stop config_redis`` (and ``sup stop config_redis``) hang
  * [101081] Config changes force a process restart
  * [101188] ``kato report`` no longer asks for sudo password
  
* [98724] Added global :ref:`admin hooks <docker-admin-hooks>`
* [99950] In-place :ref:`node and cluster upgrade <upgrade>`
* [98574] Added :ref:`SNI support <server-config-sni-support>` to Stackato router (SSL configuration)
* [101993] App Store: use shell escaped args when calling stackato client 
* [101560] Enable rotation of some log files
* [101692] Remove appstore containers after use
* [101993] Fix shell escaping of arguments in app store deployments
* [101872] Deleting an app will now delete its drains
* [100396,101370] Added import/export support from both CFv1 and CFv2 based systems
* [101823] Upgrade Ruby and Rails components against reported vulnerabilities
* [101973] Upgrade ActiveRecord to 3.2.16
* [102025] Revoke AOK token on logout
* [101822] Address NGINX CVE 2013-4547
* [101925] Remove passwords from cloud_controller_ng logs
* [102003] Enhancements for web console re-branding
* [101917] Account for different exit status returned by Fence
* [97541,101449] Made libpq-dev and bundler available in container
* [99476] Improve security of router SSL handling
* [100687] Add max length validation to org and space names (64 chars) 
* [100900] Deny non-SSL requests to AOK
* [101254] Update java-buildpack from v1.0 to v1.5
* [101590] ``--env`` settings are always written
* [101750] Add ``--url`` to appstore push API
* [101980] DATABASE_URL and POSTGRESQL_URL env variables now uses "postgres://" instead of "postgresql://" 
* [101980] JDBC_DATABASE_URL env variable now available ("jdbc\:postgresql\://") 



* Stackato client updated to v3.0.0

  * [102085] Fix issues communicating with Stackato v2
  * [101761] Improve handling of UPSI vs. managed services
  * [101763] Add configurable ``--timeout`` for ``start`` and ``push`` commands
  * [101473] Warn about a BUILDPACK_URL without proper framework type
  * [100929] Dropped ``--name`` alias for ``--as``
  * [90686] Add ``stackato run --all`` option
  * [101381] Improve semantic checking of YAML keys
  * [101702] Allow the use of plain domains (without host) for ``(un)map``
  * [94022] Add ``pre-push`` hooks
  * [97575] Improve ``-d`` debug port handling
  * [101507] Improve handling of multi-instance app startup
  * [101443] Improve handling of ``switch`` commands against known orgs/spaces
  * [101812] Improve handling of non-json responses
  * [101859] Show events for spaces as well as applications
  * [101949] Default to URL based on current space
  * [100346] Fixed hang in ``stackato tunnel`` with CF v1 targets
  
  

v3.0.0 Beta (November 6, 2013)
------------------------------

* [93889] Update core components to Cloud Foundry v2 API
* [99842] Update AOK replacement of UAA to new CFv2 API compatibility
* [101162] Update NATS message bus to use gnatsd
* [97026,98612] Replaced Doozer with Redis
* [100386,100732] Update Linux kernel to Raring backport
* [100215] prevent crontab breakage caused by newlines in environment variables
* [99604] New X-Frame header configuration option for router
* [96349] Separate user and admin documentation

* Containerization:

  * [100352,101383] Use Docker for containerization
  * [96266] Improve app startup flapping prevention under high-load
  * [99614] New default limit of 50 processes per container. Configurable with ``kato config`` under ``fence max_container_processes``
  * [98668] Memory consumption during staging is now limited to 1.5 times the application's allocated memory by default. Configurable with ``kato config`` under ``stager app_memory_multiplier``

* Kato:

  * Add ``kato node retire`` to gracefully shut down a DEA, moving its application instances on other available nodes first.
  * ``kato admin ...`` commands removed; use the corresponding ``stackato admin ...`` commands or the web console
  * [93195,101079,101195] New ``kato node upgrade`` command to support node-level upgrades
  * [98649] ``kato process stop fence`` now correctly stops fence process
  * [98390] ``kato node attach`` now checks for version compatibility when adding a node to a cluster
  * [99521] ``--no-stop`` option removed from ``kato role remove`` command.
  * [99745] ``kato config`` no longer supports node-specific config; ``--node`` option removed.
  * [100861] Extend ``kato node setup firstuser`` to require default organization

* Languages:

  * [99429] Add Ruby 2.0 runtime and remove Ruby 1.8.7 (EOL)
  * [99368] Fixed problem building Nokogiri 1.6 gem. Stager now uses using system libraries (``NOKOGIRI_USE_SYSTEM_LIBRARIES=true``).
  * [94620] ActivePerl 5.14 removed
  * Update to ActivePython 2.7.5.6 and ActivePython 3.3.2.0
  * [99977] Update PHP to 5.4 for default runtime
  * [99840] Support legacy frameworks with built-in buildpack

* Logyard:

  * [99435] New ``kato log drain status`` command for showing drain status
  * [98325] Move drains from doozer to redis
  * [98687] Add "AppGroup" field to app log stream
  * [98836] Add "HumanTime" field to systail log stream
  * [98870] Add app crashes/exits (eg: OOM killer) to cloud events
  * [98686] Add harbor service provision events to cloud events
  * [96827] Cloud Events patterns are now configurable (via ``kato config``)
  * [99534] New ``read_limit`` setting for apptail (default 16MB) to cope with extremely large application log files
  * [99571] Application log drain URLs now properly sanitized (v2.10.6 'logdrain-sanitize' patch)
  * [100512] Fix a leak in growing TCP connections causing systail to crash (inotify panic), and logyard drains to malfunction.
  * [100507] New WARNING log message on drain retries
  * [98214] Improve handling of drain state transitions
  * [98998] Compile with Go 1.1
  * systail now works with logrotate managed files (eg: router2g-access.log)
  
* Management Console:

  * Update look and feel, improve inline loading and responsiveness using websockets
  * [99505] New Activity Stream API and timeline
  * [94745,94274] New disk activity and disk space graphs
  * [98737] New dashboard for router metrics
  * [99452,100047] Updated App Store to use new API and YAML format

* Services:

  * [99874] Core services ported to CFv2 API
  * [97164] Micro cloud starts with Memcached, Redis, PostrgreSQL, RabbitMQ, and MongoDB roles disabled by default (enable via Managment Console).
  * [98930] RabbitMQ updated to 2.8.7
  * [98457] RabbitMQ 3.1.3 available (disabled by default). Enable with ``kato role add rabbit3``
  * [99518] Increased default filesystem service size to 500MB
  * [99444] Make mysql service compatible with Amazon RDS
  * [98902] MongoDB client updated to 2.4.1 in application container 

* Client:

  * [96623] Full support for CFv2 API, maintained CFv1 compatibility
  * Updated command set for CFv2 terminology changes
  * [96061] Enforce stricter interpretation of positional options and commands to disambiguate some commands
  * [98509] Support array of applications in manifest.yml
  * [100564] Support user provided service instances
  * [99376] Show status of user drains
  * [100254] Removed ``host`` subcommand

v2.10.x Patches
---------------

See `Stackato FAQs tagged 'patch'
<http://community.activestate.com/taxonomy/term/547>`__ on the
ActiveState Community Site.

  
v2.10.6 (June 10, 2013)
-----------------------

* [98980] New :ref:`kato patch <kato-command-ref-patch>` command
* [96962] New :ref:`Google Apps authentication strategy for AOK <aok-strategies>`
* [96395] Upgrade ActivePython distribute version to the latest
* [98481] Fix a postgresql readiness issue on 'kato data export'
* [98785] Upgrade Nginx to v1.2.9
* [98626] Fixed 2.6.7 to 2.10 cluster data import error
* [98632] pyopenssl now installable via PyPM without an ActivePython Business Edition license
* [98602] Fixed orphaned erlang beam processes on rabbitmq service deletion
* [98636] Fixed filesystem service capacity limits
* [98626] Autoscaling: Fixed *ArgumentError in get_datastore (1 for 2)*
* [98681] Correct ownership of */home/stackato/.ssh/known_hosts*
* [98715] cloud_controller X-Accel-Mapping header missing
* [98722] Locked down redis_server port from container access
* [98735] Management Console: Overview now shows number of nodes in cluster
* [99133] App Store: re-enabled Services filter
* [98875] Fixed cloud controller error when increasing app instances in Management Console
* [98884] Cloud controller now sends router.unregister NATS message on shutdown or restart
* [98928] Fixed incorrect status codes in router2g access log
* [98942] Hooks with grails (java_web) framework fixed
* [98590] Fixed ``kato status`` role reporting overlap
* [98972] Fixed MySQL service metadata import
* [98985] Less aggressive DEA autoscaling
* [98997] Fixed potentially blocking operation during retry of TCP drains
* [99006] ``kato op upstream proxy ...`` now correctly modifies the LXC template
* [99025] Longer (and configurable) timeout for ``kato op regenerate postgresql``
* [99040] Management Console now un-maps URLs correctly
* [98966,99012] fixed broken postgresql first boot task
* [99145] Fixed an issue where services may not be deleted from the web console
* [99153] Fixed Harbor service issues with UDP backend health checks
* [99220] Fix for cloud-init Stackato 'rename' task failing
* [99230] Fixed cloud-init failing to install custom apt-packages
* [98997] Fixed potentially blocking operation (up to 10s) in drain:stop
* Fence/DEA (app container management):

  * [98979,98990] More accurate disk usage monitoring
  * [99100] Fixed a DEA memory leak with droplet management
  * [98749] Fixed ``FATAL -- Can't create DEA pid file: Process already running``
  * [98700] Fixed traceback on DEA restart (``parse_info!': undefined method `[]'``)
  * [98688] Fixed *Filesystem::node: No such file or directory - /var/vcap/sys/run/fence.sock* error
  * [97619] Improved the accuracy of (accounted) container memory usage
  * [99147] Ensure container creation failure does not crash fence
  * [99204] Fixed "No such file or directory" ENOENT error on DEA
  * [98934] Container cleanup fix
  * [99202] Fixed "can't add new key into hash during iteration" warning on container cleanup
  
* stackato client updated to 1.7.4

  * [97359] New default behavior for ``stackato update`` preserves
    previously set environment variables. New ``--env-mode replace``
    option enables the old behavior of removing or resetting environent
    variables.
  * [96962] New ``token`` command for interactive token-based
    authentication with external SSO systems. 
    

v2.10.4 (April 5, 2013)
-----------------------

* [97520] Oracle DB add-on with ``stackato dbshell`` support

  * ORACLE_URL and JDBC_ORACLE_URL env vars if Oracle service present
  * Spring auto-configuration of Oracle DB binding
  
* Improvements to :ref:`Logyard <logging>`:

  * [96008] Fix logyard crash and uncleaned drains sometimes triggered
    by ``kato log tail``
  * [98244] Delete app drains on ``stackato delete``
  * [97614] Improve apptail reliability
  * [98279, 98354] Configurable finite retry on drains
  * [98169] Configurable maximum limit on user drains
  * [98326] Support for named custom format for use in drain URIs
  * [97856] apptail: handle NATS disconnection
  * [98280] Fix retrying behavior to reset retry delays after some
    point
  * Simplified formatting of log records in logyard.log
  * [98354] Reduced the frequency of retry warnings (esp. for Cloud
    Events)
  * Stability improvements [98091, 96337, 98342, 98243, 98240, 98423]
  
* Core runtime updates for stability and security [97667, 97978, 97857,
  97551]

  * [98515] `Upgraded PostgreSQL to 9.1.9
    <http://www.postgresql.org/about/news/1456/>`_ to address
    CVE-2013-1899 (major), CVE-2013-1900, and CVE-2013-1901
  * [97645] Improved cookie handling of token
  * [97649] Prevent REST API cross site request forgery
  * [97646] Prevent XSS vulnerability through App Store yaml file
  * [98256] Address CVE 2013-1857 in Rails
  * [98521] Reduce controller default memory limit to 50% (from 70%) before
    it is restarted
  * [98050] Updated `doozerd <https://github.com/ha/doozerd>`_

* Node.js

  * [97557] Updated node08 runtime (0.8.22)
  * [98068] Added node010 runtime (0.10.1)

* Perl:

  * upgrade to uWSGI 1.4.9
  * updated ActivePerl-5.14 runtime (5.14.4.1405)
  * added ActivePerl-5.16 runtime (5.16.3.1603)
  * latest App::cpanminus supports installation via URLs and from git
  * added support for cpanfile to specify dependencies
  * added experimental support for Carton, the Perl module dependency manager

* Python: upgrade to uWSGI 1.4.9

* Ruby: 

  * [98316] Update Ruby autoconfiguration library for MongoDB
  * [98223] Improve handling of stdsync usage
  * [98113] Updated Ruby buildpack
  
* Router improvements

  * [97806] Implement NATS connection error handling and retry logic
  * [98292, 98252] Fix possible JSON truncation in large responses
  * [98403] Correctly drop lost controller nodes from routing table
  * Additional fixes [96790, 98062, 98029, 97882]
  
* :ref:`kato <kato-command-ref>` updates:

  * [95989] ``kato users`` has moved to ``kato data users``
  * [97251] Added ``kato node list`` to list all nodes and which roles
    are running on them
  * [98137] ``kato tail`` skips logyard INFO records unless ``--raw`` is passed.
  * [98107] Correct ``kato node rename`` to handle existing pushed apps when using mdns
  * [97934] Prevent ``kato data export`` exception if memcached services was never used
  * Additional bug fixes [98067, 96792, 97597, 97769, 97808, 97810,
    97753, 97392, 97761, 97752, 97809, 97561, 98009, 96795, 98384,
    98272, 98481, 98402]

* [98281] Fix an issue with stopping apps during DEA shutdown.
* [96175] Fix a regression in ``stackato files logs/staging.log`` not returning
  `staging.log`
* [97895] Fix yajl load error in wait_for_fs.rb (when filesystem service is used)
* [98282] Speed up ssh connections to system
* Web console improvements [97736, 97702, 95765, 97701, 96121, 97777,
  98144, 97699, 98140, 97996, 97882]
  
  * [98254] Display Logyard configuration settings
  * [98042] Fix memory leak on long-open pages polling cloud events
  * [98127] Instant refresh of in-page modified components
  
* [97025, 98259] Improve DEA internal connectivity speed
* [98281] Improve DEA app cleanup on shutdown
* [93626] Enforce random postgres password at first boot
* [96007] Fix JBoss database support error when no services are defined
* [97731] Reduce long polling calls from the web console
* [97772] Correct ability to do first user setup after kato factory reset
* [97993] Made log rotation more strict (rotate any log in /s/logs/ over 10MB)
* [91120, 98299, 97973] Usernames are now stored in a case insensitive manner
* [98182] Updated Mono framework add-on to 3.0 Beta (Mono version 2.11)
* [98312] Update user authentication check to return compatibility to vcap_java_client
* [97322] cloud-init updates
* [97253] Change of "cloud_controller" role to "controller", new "primary" role
* [98314] Restrict kernel messages to tty console to errors only
* [98289] Improved console tty startup process to show progressive start state
* [98288] Update MongoDB to 2.4.1
* [97322] Improved cloud-init support to allow some kato commands to be called deferred
* [98523] Make MySQL service STORAGE_QUOTA_INTERVAL and KEEP_ALIVE_INTERVAL configurable, move quota check to every 30s default
* [97760] Properly handle timeout errors when checking DB quotas
* [97619] Updated app instance memory calculation to use container group stats
* [98550] Set container memory limit exactly at app instance memory request (was overallocating 12.5%)
* Documentation updates
* stackato client updated to 1.7.2

  * [98187] New `stackato admin grant/revoke/list`
  * [98145] Fixes to some false negative key warnings
  * [98221] Fixed multi-app push from stackato.yml
  * [98045] Correct limits management between users and groups
  * [96810] Correct handling exploded .war directories
  * Additional bug fixes [98238, 96930, 98181, 92751, 98089, 97958,
    97906, 97520]

V2.8 (February 26, 2013)
------------------------

* App Store improvements

  * Now a separate component.
  * Full streaming of application deployment output to the Management Console
  * [96401] App Store output now available in app log stream (:ref:`stackato logs <command-logs>`)
  * [97622] App Store uses upstream proxy info (e.g. provided by :ref:`kato op upstream_proxy set <kato-command-ref-op-upstream_proxy>`).

* New Harbor port service

  * Allows external ports to be forwarded directly to your app
  * Supports TCP, UDP and dual TCP/UDP ports.
  * Supports multiple app instances (TCP only)
  * [95358] Supports use of custom and multiple SSL certs with your application. For apps that use frameworks, harbor provides a built-in HTTPS server with SPDY support for the custom certificate(s).
  * Passive health checking of unavailable backends or unresponsive apps.

* Fence (fully non-blocking container management):

  * Less memory usage, faster DEA/stager performance
  * Faster container startup
  * Addition of per-app enforced disk limits
  * Improved security via Unix user-level compartmentalization in the kernel (each container now has its own Unix user)
  * Support for any IP range for LXC containers (configurable)
  * Removing (deprecating) lxctrl processes (less memory use)
  
* AOK (user authentication):

  * Optional external user authentication component
  * LDAP authentication support
  
* [97274] PostgreSQL: `HSTORE <http://www.postgresql.org/docs/9.1/static/hstore.html>`__
  (key/value storage) support in the PostgreSQL service.
* Redis: upgrade to v2.6 (`release notes <https://raw.github.com/antirez/redis/2.6/00-RELEASENOTES>`__)
* Python: upgrade to uWSGI 1.4.5
* Perl: upgrade to uWSGI 1.4.5
* Java: JPDA debugging for java_web applications via Harbor port service.
* Go: upgrade to the latest `Go buildpack <https://github.com/kr/heroku-buildpack-go>`__
* Logyard updates

  * [96620]: Drains are now retry infinitely if disconnected.
  * [96338]: Added new fields to the JSON of application log stream: AppID (application ID), AppName (application Name), NodeID (host DEA IP of the instance)
  * Added a new ``file:///`` drain for debugging purposes.
  
* [96493,96498] UI improvements for non-admin users in Management Console.
* [95986] New 'app-dir' key in stackato.yml to support deploying from a specific sub-directory.
* [97013] No port lookup for app host in incoming HTTP header.
* [95902] Management Console: Warn when deleting the last role on a node.
* [96729] Admin-configurable web console login expiration
* [96700,96653] Rails security fixes.
* [96677] mDNS backend: avahi-daemon removed and avahi_announcer replaced with avahi_publisher and app_mdns.
* [96225] Manual SSH key configuration on systems with separate Router, Cloud Controller, or Load Balancer nodes is no longer required during setup.
* [96696] Allow simultaneous 'kato tail' sessions.
* [96932] Fix certain /files routes e.g 'stackato files' from not being routed correctly.
* [95576] Prevent CC from being blocked during a vSphere scaling operation
* [96708] Major changes to ``kato`` commands and command naming:

  * "kato start|stop|restart" now manipulates roles, not processes.
  * "kato enable|disable" is now "kato role add|remove"
  * "kato attach" is now "kato node attach"
  * "kato setup micro" is now "kato node setup micro", "kato setup core" is now "kato node setup core" and "kato setup load_balancer" is now "kato node setup load_balancer"
  * "kato setup controller" and "kato setup node" have been retired. Use "kato node setup core" and "kato node attach" instead.
  * Change to how "kato drain add" options are passed. Dropped --option key=value --option key=value in favor of a just key=value key=value
  * For "kato role add|remove" (previously kato enable|disable), --all-but and --only are now boolean flags that act on the list of roles given. Therefore "kato enable --all-but dea,prealloc" becomes "kato role add --all-but dea prealloc"
  * "kato role remove" no longer supports the flag --no-stop
  * "kato rename" is now "kato node rename"
  * Added "kato role list" to list all roles and number of nodes they are enabled on.
  * "kato config" now takes action keywords "set", "get", "del", "push" and "pop". This is not backwards compatible. Example is "kato config set <component> <key-path> <value>".
  * "kato tail" is now "kato log tail"
  * "kato drain" is now "kato log drain"
  * "kato process start|stop|restart" can now be used to manage processes, though managing *roles* via "kato start|stop|restart" is recommended.
  * "kato ready", for checking the ready status of processes, is now "kato process ready"
  * Add "--node" to "kato process ready" to check status or process on any node.
  * "kato config" default output is YAML
  * "kato debug lsdoozer" has been removed. Use "kato config get --flat" instead.
  * The previous "kato status" functionality that showed just a list of processes and their statuses can now be found under "kato process list"
  * "kato import" is now "kato data import".
  * "kato export" is now "kato data export".

* stackato client updated to 1.7.0

  * [97399] Added '-d' option to enable JPDA debugging via Harbor service.

v2.6.7 (December 19, 2012)
--------------------------
  
* [96341]: Fix --format not being respected in `kato drain add`
* [96225] Manual SSH key configuration on systems with separate Router, Cloud Controller, or Load Balancer nodes is no longer required during setup.
* [94390] Added Node.js v0.8.14 as a dual runtime along with v.0.6.20
* [96231] Java 7 has been added as a new runtime.
* stackato client updated to 1.6.2

  * [95509] References to 'stackato' in renamed client help fixed.
  * [96386] Fixed output problems with 'stats' command.
  * [96427] Fixed problem with '--no-tail' option.
  * [96429] Fixed "Ambiguous runtime" error with 'standalone' framework.
  * [96438] Added option '--token' for direct specification of the auth token.

v2.6 (November 27, 2012)
------------------------

* Log aggregation/forwarding updates (Logyard)

  * Application log streams
  * Redesigned to run on large-scale clusters with no single point of
    failure or inter-node traffic.
  * Better log forwarding via drains (tcp, udp, redis).
  * Added Splunk support (based on drains).
  * Key deployment events made available in the application log
    stream.
  * Improved documentation.

* Cloud-Events

  * Cluster support - now includes events from all nodes in the cluster.
  * Forward events via Logyard drains.
  * Build reports on top of cloud events via third party services.

* Kato import/export changes - new next generation cluster migration tool

  * ``kato import/export`` uses the cluster-aware back end formerly accessed
    with ``kato migrate`` (deprecated)
  * Bug fixes: [96065, 96072, 96073]

* Client updated to 1.6.1

  * Application log forwarding setup via ``stackato drains add`` (user-level)

* New ``kato history`` command shows a history of administrative ``kato``
  commands ran across the cluster.

* Removed Command: ``kato ls`` in favor of ``kato status --all``

* [93012] Allow multiple staging nodes

* [96026] Create "contrib" plugin frameworks directory

* [95935] Fixed misleading 'Cannot connect to doozerd' warning in various cluster situations.

* [96215] Security fix for app store installs

* [96114] New dedicated Nginx instance for handling Cloud Controller file uploads

* [94258] Configurable data services storage location

* [95703] Fixed headers being prematurely sent on error pages with router2g

* [96191] Upgrade to Ruby 1.9.3-p327

* [96255] Fix issues with `kato node rename` when `/etc/hostname` is empty

* Additional documentation for new features, plus edits and minor corrections


Release v2.4 (October 29, 2012)
-------------------------------

* Improved application logging:

  * Logs are persisted between application restarts
  * ``stackato logs`` runs much faster, returns logs from all instances, and returns logs from stopped/crashed instances
  * ``stackato logs --follow`` tails logs from all instances

* Improved system logging (BETA):

  * Aggregate stackato system logs from all nodes in the cluster
  * Output plugins to stream system logs to Loggly, papertrail, and others

* Import and export Users and Groups via web console (.csv format)

* Simplified web console theming, with improved documentation

* Upgraded Apache TomEE Plus from v 1.0.0 to v1.5.0. In addition to the support of new TomEE features as listed on the `TomEE site <http://tomee.apache.org/downloads.html>`_, this upgrade addresses additional bugs:

  * [95426] Added Hibernate
  * [95082] Fixed Grails apps
  * [95425] Fixed test failure (Java apps with mysql services)
  * Other application compatibility issues

* New Command (BETA): ``kato migrate`` - next generation cluster live migration tool

* New Command: ``kato op static_ip`` - intuitive tool for static-ip configuration

* New Command: ``kato relocate ...`` - move key shared data to a new
  location (e.g. persistent storage)

* Client updated to 1.5

  * [95702] Allow uploading very large applications (upload limits still
    imposed by server)
  * [92160] New subcommand ``scp`` to move data to/from app instances
  * Support for enhanced logging features

* Client installation no longer available via ``pypm``

* MongoDB upgraded from v1.8.1 to v2.0.7

* Node.js upgraded from v0.6.18 to v0.6.20

* Ruby upgraded from 1.9.3-p125 to 1.9.3-p194 (with security patches from p286)

* [95291] Fixed incompatibility with Eclipse Cloud Foundry plug-in and Spring Tool Suite

* [94769] Allow non-web background processes with the "standalone" framework

* [94734] Support non-web background processes for all other frameworks

* [95491] Show DEA host node IP in application Details page for admins

* [94076] Auto-Complete for adding users to groups

* Experimental 'load_balancer' feature available via ``kato setup`` (BETA - not for production use)

* Router2g improvements (BETA):

  * SPDY support on all HTTPS connections
  * Improved logging of events
  * Support multiple cloud controllers
  * [95280] Fixed not setting content-length for Django applications

* Tuned system logging behavior for some components (DEBUG->DEBUG2)

* Ability to deselect App Store URLs without deleting them

* The App Store can now be disabled (removed from the side menu)

* Allow auto-starting of apps deployed from the App Store

* Documentation for new features, plus edits and minor corrections


Release v2.2.3 (September 28, 2012)
------------------------------------

* [95661] Revert to older version of supervisord to fix an issue with
  cluster setup

Release v2.2.2 (September 20, 2012)
-----------------------------------

* Integrated Ruby buildpack. When using ``framework: buildpack`` in *stackato.yml* for ruby apps, BUILDPACK_URL can be omitted.

* Java: Correct copy_source_files for non java_* frameworks

* Java: Improved access to logs

* Java: Add logs for debugging EAR JEE applications

* [95287] Improved memory usage calculation in forked Apache process apps

* [95290] Tuned default Apache settings for app instances

* [95458] Prevent doozer "TOO_LATE" warning

* [95265] Handling client errors in App Store deployments more gracefully

* [95314] App Store checks if application name is already in use

* Client updated to 1.4.5

  * Fix Windows Unicode pathname handling

  * [95485] Tail stderr.log instead of startup.log on push in slow
    deployments. Latter file is not used by all frameworks.

* Documentation updates:

  * New Relic integration docs updated

  * Updated cluster docs to use the correct form of `kato attach`
    and switched from `kato setup` to `kato attach` in autobecome

  * Added pyramid-default sample to Python docs

  * Updated Ruby deployment information

  * Updated autoscaling section with EC2 URL

  * Correct use of the Authorization HTTP header in client APIs


Release v2.2 (August 15, 2012)
------------------------------

Development
~~~~~~~~~~~

* Numerous additions and changes in ``kato`` server administration commands:

  * Most of `kato` rewritten in Ruby

  * :ref:`kato node {remove|migrate} <kato-command-ref-node-attach>` to manage
    outdated nodes or changing core IP

  * :ref:`kato ready <kato-command-ref-process-ready>` to determine ready status of
    underlying components

  * :ref:`kato inspect <kato-command-ref-inspect>` to check for common
    configuration issues

  * :ref:`kato setup core <kato-command-ref-node-attach>` to replace
    `kato setup controller`

  * :ref:`kato attach <kato-command-ref-node-attach>` to replace `kato setup node`

  * :ref:`kato enable|disable data-services <kato-command-ref-role-add>`

  * [94947] Manage cloud_controller as independent role to support multiple
    instances

  * Improve help output and error handling for incorrect arugments

* [94844] stackato run dbexport: exports mysql and psql databases

* [94657] Changed the `-n` alias for `kato setup -hostname` to `-a`

* [94357] Filesystem service split into `filesystem_gateway` and
  `filesystem_node` to make multiple filesystem service nodes possible

* [94905] Adjust VCAP_SERVICES service key to use unversioned service name
  (version remains in ``label`` key) to bring parity to client service creation

* [94783] Experimental router2g with WebSockets support

* [94744] Updated doozerd binary, fixed verbose doozerd.log logging
  affecting disk i/o

* [94828] Properly url encode console links for user names with special
  characters

* [94501] Extract droplets asynchronously on DEA

* [92457] Enable `kato export` via web console

* [94638] Expose Allow Overprovisioning flag for all services

* [94823] Switch App Store format from json to yaml and add tags field

* [95204] Use core stackato client for App Store installation and make
  asynchronous [94834]

* [95130] Auto redirect to logout when old or bad credentials are passed to
  deep linked page

* [94734] Fix handling of file system links when viewed in web console

* [95090] Defer re-staging of stopped apps when application environment is
  modified to next start request.

* [95049] Ensure log rotation of cloud controller rails log

* [94933] Improve handling of postgres restart in `kato import`

* [95151] Fix auto-incrementing of uniq keys in `kato import`

* [95156] Enable apt-get blacklist of some core packages to ensure system
  stability in system apt-get update

* [93847] Set max_droplet_size via `kato op max_client_upload`

* [95211] Run pre-running hooks after env generation during deployment to
  ensure database migrations are finished before the user commands execute

* [95082] Fix Grails incompatibility with TomEE due to conflicting
  validation jar

* [95028] Add JBoss framework JDBC service handling

* Updated Stackato client to 1.4.4:

  * [95197] Improved `logout` command to allow selective target logout

  * Fixed grails [95112] and aspdotnet [95122] framework auto-detection

  * Enhanced variable resolution in stackato manifest to resolve variables
    in the key portion of the yaml

  * Added EAR archive detection for JavaEE framework

  * Merge command line options from `push` into the stackato manifest values

  * [94852] Compare http headers case insensitively

Documentation
~~~~~~~~~~~~~

* Clarify usage of dnsmasq

* [93980] Document how to configure DNS to support access to an application URL

* Added .NET deployment section

* Improvements in:

  * client/core API docs

  * language deployment (java, VCAP_SERVICES, DATABASE_URL)

  * stackato.yml docs (variable subsitution etc.)

  * cluster & auto-scaling docs. (kato setup core)

* App-store docs rewrite. (JSON -> YAML based store, simplified)

* Best-practices docs rewrite. (migrations, export, import, dbshell...)

* Moved FAQ page to http://community.activestate.com/faq-list?tid=453

* Deprecated Kato setup controller/node. See :ref:`kato command reference <kato-command-ref>`.


Release v2.0.7 (Jul 19, 2012)
-----------------------------

* [94813] Fix for `kato import` failure when migrating from v1.x to v2.x

* [94737] Fix for potential sudo errors when sudo is enabled in the containers

* [94716] Fix for special characters causing issues in user email address

* [94740] Fix for NATS timeouts in the Stager

* [94578] Fix for Stackato usage reporting accuracy

* [94847] Fix for more precise memory usage calculation in deployed applications.

  * Improved container cleanup managment

* [94836] Optimisations for DEA app queuing after cold startups of Stackato.

  * Configurable simultaneous app starts per DEA
  * Configurable maxmium prealloc queue length

* [94812] Improved first setup workflow for statically configured IP environments.

* Update Stackato client to v1.4.2

* Various documentation improvements and updates


Release v2.0  (Jul 10, 2012)
----------------------------

* Better cluster management

  * kato, a better replacement for stackato-admin
  * Central multi-node configuration through doozer
  * Better process management through supervisord
  * CLI to edit configuration on all nodes: kato config
  * Fix: make nats-server run only on the controller node
  * Fix: automatically restart avahi-announcer and redis-server if
    they crash

* Merged with latest Cloud Foundry sources

  * New Memcached as a service
  * Router v2 upgrade
  * Configurable restart behaviour for crashing apps
  * New Java Play framework, also supported via Buildpacks

* Allow stager to be run on different node

* Avahi / mDNS now compatible with a cluster setup

* Improved `kato tail`; now includes non-vcap components such as nginx,
  postgres, redis.

* Base OS upgraded to Precise Pangolin (12.04)

* Database service versions upgrades

  * Postgresql upgraded to v9.1 (-> v8.4)
  * MySQL upgraded to v5.5 (-> v5.1)
  * Redis upgraded to v2.4 (-> 2.2)

* Python

  * Custom pypm/pip options via $PYPM_OPTS and $PIP_OPTS environment variables

* Scala support via Buildpack

* Java EE 6 support

  * New java_ee framework via Apache TomEE

* Integrated support for Iron Foundry .NET runtime

* Runtime upgrades

  * Node.js v0.6.18
  * PHP 5.3.10

* Stability bug fixes.

Release v1.2.6 ( May 15, 2012)
------------------------------

* Fix for an issue using the ``stackato-admin update-services-ip`` command

* Fix for missing Komodo debugging bits

* Fix for a groups issue when migrating from Stackato v1.0 -> v1.2

* Minor documentation updates

Release v1.2 (Apr 27, 2012)
---------------------------

* Upgraded Runtimes:

  * Ruby 1.9 upgraded to 1.9.3-p125 (from 1.9.2-p290)
  * Node.js upgraded to v0.6.15 (from v0.6.10)

* Updates to Stackato client.

* Heroku buildpack support, with built-in buildpacks for Clojure, Go,
  Java, Play! and Python

* ``stackato push|update`` will now tail the *staging.log* file simultaenously
  (like Heroku).

* Support for user groups

* Support for per-user and per-group limits

* Improved dbshell: ``stackato dbshell`` is deprecated in favour of ``stackato run
  dbshell``. The later works on cluster environment, and doesn't
  require local database clients to be installed.

* Added ``STACKATO_SERVICES`` as an alternative to ``VCAP_SERVICES``; ``PORT`` as
  an alias for ``VCAP_APP_PORT``.

* Added new service environment variables containing the respective
  connection URIs: ``DATABASE_URL``, ``MYSQL_URL``, ``POSTGRESQL_URL``, ``REDIS_URL``,
  ``MONGODB_URL``, ``RABBITMQ_URL``

* Allow SSH'ing to crashed app instances

* Optional support for caching staging files for faster ``stackato
  update``

* Disable truncation of vcap logs on component start. This preserves
  the log records when a vcap process is restarted.

* Added support for OpenStack auto-scaling

* Use geo-location aware debian mirrors in application containers
  for faster apt-get calls

* Improved the firstboot configuration process, eliminate a timeout
  bug in some cases.

* Improved, faster VM boot process (Moved to Upstart).

* VM now uses NTP for time synchronization

* Fix for supporting externally mapped URI's on applications

* Fix for Avahi broadcasting the wrong inteface address

* Add Go language support

* Add PyPy support (external buildpack required)

* Add JRuby support (external buildpack required)

* Python:

  * Allow pip to use mirrors (``--use-mirrors``) when installing
    packages

  * Upgrade to uWSGI 1.1.2

  * uWSGI now supports running Python 3.2 applications

* Perl

  * Upgrade to uWSGI 1.1.2

* Node.js:

  * All packages installed from NPM are now automatically added to the $PATH,
    meaning sudo priveleges for 'npm install -g' are no longer required.

* Clojure:

  * Upgrade to Leiningen 1.7; switch to Heroku Buildpack

* Automated DBGP Debugging

  * Pushing an app with ``--stackato-debug <host>:<port>`` enables
    Django, Rails, and Sinatra ``get`` requests to be debugged in DBGP-supporting
    apps like Komodo IDE with a ``STACKATO_DEBUG=1`` parameter, and enables PHP
    debugging with the ``XDEBUG_SESSION_START=1`` and ``XDEBUG_SESSION_STOP=1``
    parameters.

Release v1.0.6 (Mar 08, 2012)
-----------------------------

* Fix an issue for Filesystem services not unprovisioning correctly

* Fix an issue with LXC container memory management causing a potential system lockup


Release v1.0 (Feb 28, 2012)
---------------------------

* Revamped Stackato Management Console

  * Increased the administrators control of the overall system
  * Ability for users to control their own applications
  * Core system server performance graphs
  * Improved cloud events logging

* New persistent file system service

* Support for the Cloud Foundry (vmc) *manifest.yml*

* Added "Generic framework" to deploy applications with a arbitrary
  start procedure

* Support for dynamically pre-allocating application containers.

* make app environment variables available to staging, run
  commands, ssh and cron.

* ``stackato-admin report``: wrap logs and other system information
  for future diagnosis of a problem.

* The applications timezone is now inherited from the Stackato VM host

* ``$app_http_proxy`` is now available to specify a application specific ``$http_proxy``

  * The new ``stackato-admin upstream-proxy`` command helps setting this variable,
    check the docs or ``stackato-admin help`` for more information.

* Moved vcap logs in */tmp/vcap-run/* to *$HOME/stackato/logs/*

  * These logs are now compressed and rotated daily

* show the actual staging log, instead of `Error
  310: Staging failed`, upon push / update failures

* allow top-level dotfiles during staging

* ``stackato-admin become <node>`` now allows renaming operations
  on the VM, allowing you to speficy the FQDN and local hostname.

  * The shorthand ``all`` role has also been added to ``stackato-admin become`` to assign
    all the available roles.

* Bug fix for sporadic high load averages on DEA nodes

* NewRelic Server Monitoring bits are now preloaded onto the VM.

  * `Get Started <http://newrelic.com/features/server-monitoring>`_

* Implemented fallback console on the virtual TTY1 for unsupported
  resolutions.

* The TTY application now has fundamental error reporting built in.

* git, mercurial and subversion are now made available in application
  instances.

* Staging support for *manifest.yml*

* Support for a external MySQL Database (e.g existing cluster)

* Python:

  * Run pip with *requirements.txt*, as that is the most common filename
    used by Python projects; if only *requirements.pip* exists,
    run pip with that file. For PyPM, use *stackato.yml* or
    *requirements-pypm.txt*.
  * Fix: make "-e" (source installs) in pip *requirements.txt* work

* Clojure:

  * Automatically run ``lein deps`` to download dependencies

* Node.js:

  * Upgrade to v0.6.10

* Ruby 1.8:

  * Upgrade to patchlevel p-357



Beta Release 0.8.2 (Jan 17, 2012)
---------------------------------

* New web-based management console for administrative control of Stackato

* Merge with Cloud Foundry upstream as of Dec 21, 2011

* Application Staging now happens in LXC; thus more secure.

* Support for SSH'ing into application instances. (experimental)

* Improved and reliable ``stackato run`` based on SSH.

* Support for schedule tasks through cron (experimental)

* OpenStack build support

* Python:

  * Fix ``PYTHONPATH`` to contain correct value in the "run" command
  * Use PyPI mirrors during pip staging

* Java:

  * Move from Sun/Oracle Java packages to Open JDK/JRE packages (`why?
    <http://lwn.net/Articles/472466/>`__)

* Node.js:

  * Upgraded to version 0.6.7

* Clojure:

  * Leningen upgraded to version 1.6.2

* VM:

  * Added dynamic first boot configuration process to randomise
    the hostname and SSL certificates.
  * New console application running on tty1
  * Microcloud HTTPS/SSL certificate now supports the TLD and all subdomains
  * Udev networking rules have been disabled



Beta Release 0.6.0 (Nov 03, 2011)
---------------------------------

* Stackato admin dashboard (start with ``stackato-admin start
  dashboard``)

* Faster app deployment

* Set user's home directory to correct location within
  LXC containers

* Perl:

  * Remove Perl 5.12 and make Perl 5.14 the default
  * Store uWSGI command line in a ``$STACKATO_UWSGI`` environment
    variable.
  * Store the default Perl application startup command in a
    ``$PROCESSES_WEB`` environment variable (TBD for other frameworks)

* Python:

  * uWSGI for Python 3 is now officially supported
  * Store uWSGI command line in a ``$STACKATO_UWSGI`` environment
    variable.
  * Store the default Python application startup command in a
    ``$PROCESSES_WEB`` environment variable (TBD for other frameworks)
  * Add virtualenv's *bin/* directory to ``$PATH`` before
    starting the application

Beta release 0.5.2 (Oct 20, 2011)
---------------------------------

* Upgrade ActivePython to 3.2.2.3

* Upgrade Node.js to v0.4.12

* Upgrade Ruby 1.8 to patch level 290

* Additional LXC fixes for non starting apps

* Fix for broken clojure deployments


Beta release 0.5.1 (Oct 3, 2011)
--------------------------------

* LXC bug fixes and improvements (Error 306, etc.)

* Speed up PyPM/PPM/cpan/pip by caching file downloads from the internet

* Support for running custom hook scripts (post staging and pre running)

* Upgrade to uWSGI 0.9.8.5 (LTS)

* PHP support

* RabbitMQ support

* Python:

  * Properly show pip errors (during push/update/log) in *staging.log*
  * Add the application directory to ``$PYTHONPATH``
  * uWSGI: remove ``--catch-exceptions`` by default
  * uWSGI: allow applications to spawn threads
  * uWSGI: don't spawn an unnecessary additional server process

* Java:

  * Add ``:port`` back to ``VCAP_APPLICATION`` for the cloudfoundry runtime to work

* Server process monitoring (via monit)

* Known issues:

  * Clojure deployments are currently unavailable due to a change in the
    staging process.

PDP4 (Aug 25, 2011)
--------------------

* Instances are isolated using LXC containers on DEAs

* Clojure support

* General improvements to error reporting in *staging.log*

* Server now returns the git version info to client

* Documentation is hosted locally at http://docs.stackato.local

* ``stackato run``

  * Include app environment added via ``stackato env``
  * Wrap commands with quotes when necessary
  * Provide a ``dbshell`` command to invoke database clients
  * Run command no longer blocks the EventMachine reactor

* Python

  * Don't silently ignore packages missing in pypm repository
  * Deprecate virtualenv in favor of PEP 370 (faster deployments)
  * Allow invocation of scripts installed by package dependencies
  * Can now install packages with *./include* dir. (eg: greenlet)
  * Drop 'Generic Python' framework

* Ruby

  * Disable gem caching as it doesn't work with secure mode

* MySQL

  * Use UTF8 as the default database charset

VM
~~

* Upgrade to ActivePython 3.2.1.2
* Upgrade to NodeJS 0.4.10


PDP3 (July 13, 2011)
--------------------

* Support for PostgreSQL service

* Fix random 306 errors when push/update fails

* ``stackato run``:

  * Fix 306 errors after ~11 seconds
  * Suppress traceback for ENOENT
  * Kill the process after timeout
  * Make PPM area directory available
  * Cleanup ``$PATH``; add all runtimes to ``$PATH``

* Python

  * Note pypm/pip failures in staging.log

* Node

  * Auto install dependencies using ``npm install``

VM
~~

* Upgrade to ActivePython 2.7.2.5


PDP2 (June 22, 2011)
--------------------

* ``stackato run``:

  * Put runtime's path in front of ``$PATH``
  * Close STDIN descriptor to prevent hanging processes
  * Support ``--timeout`` option (default = 1 minute)
  * Ruby: set ``GEM_{HOME,PATH}`` environment variables so dependent
	binaries (eg: rake) can be run

* Python

  * pip and pypm can both be used to install Python
	dependencies
  * Python 3.x support for 'Generic Python' framework

* Perl

  * Perl applications must have a toplevel *app.psgi* file
  * Perl 5.14 support under the "perl514" runtime name
  * Perl modules can be installed with cpanm via *Makefile.PL*
  * new Perl logfiles: *logs/staging.log* and *logs/ppm4.log*

* Ruby:

  * Fix an issue with linking 1.9 gems with ruby1.8


VM
~~

* Support multiple uWSGI binaries (PSGI, Python 2.7, 3.2)
* No more uWSGI zombies
* Installer creates stackato service script in */etc/init.d*
* stackato-admin controls the avahi-announcer's lifecycle (no more
  need to start/stop it separately)
* Stackato client is installed on VM (necessary for multi-vm setups)
* Resource-efficient avahi-announcer
* avahi-announcer announce the apps names, not the
  mapped URLs
* stackato-admin can manage admin users

Internal
~~~~~~~~

* Remove the vcap/installer/remote after an install
* stackato-admin uses yaml parser instead of grep
* Install script is now called *install.sh* and accepts parameters
* Do not regenerate the mysql password on
  restarting ./install
* Don't pull uWSGI directly from mercurial repo
* Allow git branch argument for ./install

PDP1 (June 15, 2011)
--------------------



