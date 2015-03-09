.. _router:

.. index:: Router

.. index:: router

Router
======

The Stackato Router role manages HTTP and HTTPS traffic between web
clients and application instances. In conjunction with the Cloud
Controller, it maps application URLs to the corresponding application
instances running in Linux containers on DEA nodes, distributing load
between multiple instances (containers) as required. 

Stackato's default router ('router2g') supports `WebSocket
<http://www.websocket.org/aboutwebsocket.html>`_ (including "wss://"
secure web sockets) and `SPDY <http://www.chromium.org/spdy>`_.

.. _router-settings:

Settings
--------

The Router is configured using :ref:`kato config
<kato-command-ref-config>`. The following settings are configurable:

* **client_inactivity_timeout**: time (in seconds) the router waits for
  idle clients (default 1200 seconds). To change this::

    $ kato config set router2g client_inactivity_timeout 2400
  
* **backend_inactivity_timeout**: time (in seconds) the router waits for
  applications to respond (default 1200 seconds). To change this::
  
    $ kato config set router2g client_inactivity_timeout 2400

* **prevent_x_spoofing** (true|false): Enable HTTP "X-" header spoofing
  prevention (default 'true'). When enabled, the router discards all X-
  headers sent by the client (e.g. X-Forwarded-For, X-Forwarded-proto,
  X-Real-IP, etc.) and replaces them with values determined by the
  router itself. Set this option to 'false' only if the routers are
  behind a load balancer which terminates SSL connections; in this
  scenario the router will trust the X-headers set by the load balancer.
  
  To disable::
  
    $ kato config set router2g prevent_x_spoofing false --json

  .. note::
    If you have configured separate network routes to the API endpoint
    and user applications (e.g. private network access to the API
    endpoint, load-balanced public access to applications) this option
    must be set to 'true'. User applications will not have access to
    X-headers set by the load balancer.

* **session_affinity** (true|false - disabled/unset by default): Enable
  sticky session support on the router. Overrides normal round-robin
  load balancing for clients with JSESSIONID, SESSIONID, or PHPSESSID
  cookies set (configurable in the router's *config/local.json* file),
  routing those clients to specific application instances. If the
  backend assigned on the first request goes down, a new one is
  automatically assigned. Clients can delete their sticky session
  assignment by removing the STACKATO_SESSION_AFFINITY cookie.

* **x_frame_options**: Prevent clickjacking on requests with
  `X-Frame response header <https://developer.mozilla.org/en-US/docs/HTTP/X-Frame-Options>`_
  configuration. Disabled if empty (default). Valid values are:
  
  * DENY
  * SAMEORIGIN
  * ALLOW_FROM <uri>

  For example::

    $ kato config set router2g x_frame_options SAMEORIGIN

  .. note::
    Alternatively, end user applications can employ `framekiller
    <http://en.wikipedia.org/wiki/Framekiller>`_ JavaScript snippets to
    help prevent frame based clickjacking.

.. index:: Endpoint Aliases  
  
.. _router-cluster-endpoint-aliases:  

* **cluster_endpoint_aliases**: Add aliases for the API Endpoint. See
  the :ref:`API Endpoint Alias <server-config-api-endpoint-alias>`
  section for an example.

.. index:: appOnlyRouter

.. _router-app-only-router:

* **appOnlyRouter** (file setting - not in ``kato``): This setting can
  be configured on router nodes in the
  */s/code/stackato-router/config/local.json* file. Set
  ``appOnlyRouter`` to ``true`` and restart the router to enable. This
  configures the router to **not** serve the API Endpoint, only
  user-deployed applications. At least one router node in every cluster
  must expose the API Endpoint, but it does not need to be internet
  accessible if the developers pushing applications are within the same
  internal network as Stackato.
  

.. index:: WebSockets

.. _router-websockets:

WebSockets
----------

Applications using web sockets must use the VCAP_APP_PORT or PORT
:ref:`environment variables <environment-variables>` to set the default
listener port of the WebSocket server.

.. index:: SPDY

.. _router-spdy:

SPDY
----

`SPDY <http://dev.chromium.org/spdy/>`__ is a protocol developed by
Google for reducing web page load time. The router supports SPDY
versions 2 and 3. Applications can use SPDY over any HTTPS connection,
so long as the connection consumers (the application server and browser)
support it.


Router SSL/TLS
--------------

See the :ref:`HTTPS & SSL <server-config-https>` section for information on:

* :ref:`Using your own SSL certificate <server-config-ssl-cert-own-use>`
* :ref:`Customizing the Cipher Suites <server-config-ssl-cipher-suites>`
* :ref:`Adding Custom SSL Certs (SNI) <server-config-sni-support>`
* :ref:`CA Certificate Chaining <server-config-ssl-cert-chain>`