.. _server-configuration:

.. index:: Detailed Configuration

Detailed Configuration
======================

.. _server-config-general:

General
-------

.. note::
  After booting the VM, run ``kato process ready all`` before starting
  the following configuration steps. This command returns ``READY`` when
  all configured system processes have started, and is particularly
  important when using ``kato`` commands in automated configuration
  scripts which run immediately after boot (the :ref:`--block
  <kato-command-ref-process-ready>` option is useful in this
  scenario).
  
.. warning::
  All ``kato`` commands should be run as the 'stackato' system user,
  **not as root**. kato will prompt for the 'stackato' user password if
  sudo permissions are required for a specific operation.
  
.. _server-config-password:

Changing the Password
^^^^^^^^^^^^^^^^^^^^^

The default password for the ``stackato`` system user is **stackato**.

This password is changed to match the one set for the first
administrative user created in the Management Console. Once you've set
up the primary Stackato admin account, use that account's password when
logging in to the VM at the command line.

In a Stackato cluster, this change only happens on the node serving the
Management Console pages (which could be one of :ref:`multiple
Controller nodes <cluster-multi-controllers>`). In this case, it's best
to log in to each node in the cluster to change the password manually
with the ``passwd`` command.


.. _server-config-network:

.. index:: Network Setup

Network Setup
-------------

.. _server-config-hostname:

.. index:: Changing the Hostname

.. index:: Hostname

Changing the Hostname
^^^^^^^^^^^^^^^^^^^^^

You may want or need to change the hostname of the Stackato system,
either to match a DNS record you've created or just to make the system
URLs more convenient. This can be done using the :ref:`kato node rename
<kato-command-ref>` command::

	$ kato node rename mynewname.example.com
  

This command will change the system hostname in ``/etc/hostname`` and ``/etc/hosts``,
as well as performing some internal configuration for Stackato such as generating a new
server certificate for the :ref:`Management Console <management-console>`.

mDNS is only supported with ".local" hostnames. If you want to give the
VM a canonical hostname on an existing network, :ref:`configure DNS
<server-config-dns>` and disable the 'mdns' role::

  $ kato role remove mdns

.. note::
    Stackato takes a while to configure itself at boot (longer at first
    boot). Check 'kato status' to see that core services are running
    before executing 'kato node rename ..'.

In a :term:`cluster`, you may also need to manually
:ref:`modify the /etc/hosts file <server-config-etc-hosts>`.

.. _server-config-ip:

.. index:: Changing IP Addresses

Changing IP Addresses
^^^^^^^^^^^^^^^^^^^^^

The Stackato :ref:`micro cloud <quickstart-setup-server-microcloud>`
server is initially set up for :term:`DHCP` and :term:`multicast DNS`.
This is often sufficient for local testing, but in this configuration is
only a single node and can only be privately routed.

As you move toward production use of the server, further configuration
of IP addresses and hostnames will therefore be required. A production
Stackato server will most likely be a :term:`cluster` consisting of
several nodes, some of them requiring IP addresses and corresponding
hostnames.

If your server is to be exposed to the Internet, these addresses must be
routable and the hostnames must appear in the global DNS. Even if your
server is to be part of a :term:`private PaaS` for organizational use
only, it must still integrate fully with your network services, DHCP and
DNS in particular. Finally, in the rare case that such services are not
available, the Stackato server can be configured with static IP
addresses and hostnames.

Before we examine these scenarios in detail, let's review the separation
of roles in a :ref:`cluster <cluster-setup>`:

* The **core** node which we conventionally call
  ``api.stackato-xxxx.local`` in a micro cloud will be given its own
  hostname and IP address in a cluster so that you can reach it from
  both the :ref:`Management Console <management-console>` and
  the command line.

* At the same time, the other nodes in the cluster will also need to
  reach the core node, so whatever address is configured on its network
  interface will have to be known to the network, the primary node,
  and all the other nodes. This can be the same as the primary address
  assigned to the core, or a secondary address used purely within
  the cluster.

* The **router** nodes, if separate from the primary, will each
  require IP addresses of their own, reachable from any load balancer
  and through any firewall that you put in front of them.

Where you configure these hostnames and IP addresses will depend on how
you operate your data center network. You will want to confer with your
network administrator about this, starting with the MAC address
configured for each VM in the hypervisor. If your site supports a
significant number of VMs, DHCP may be set up to map MAC addresses to IP
addresses in a particular way. For example, a certain range of MAC
addresses may be used for servers in the DMZ, and another range for
internal servers. If you follow this convention, your Stackato server
will obtain an appropriate IP address automatically. DNS at your site
may establish a similar convention, which you will want to follow when
making any name or address changes within the cluster.

Having determined the hostnames of cluster nodes to be managed by
:ref:`DNS <server-config-dns>`, the hostname on the primary node
should be set using :ref:`kato node rename <server-config-hostname>`.

Finally, if you must set a static IP on any cluster node, be sure to
test it before making the change permanent, otherwise you may not be
able to reach the node once it reboots. Assuming that the primary
address is on interface ``eth0``, a secondary address ``10.0.0.1/24``
could be set up temporarily as follows::

	$ ipcalc -nb 10.0.0.1/24
	Address:   10.0.0.1             
	Netmask:   255.255.255.0 = 24   
	Wildcard:  0.0.0.255            
	=>
	Network:   10.0.0.0/24          
	HostMin:   10.0.0.1             
	HostMax:   10.0.0.254           
	Broadcast: 10.0.0.255           
	Hosts/Net: 254                   Class A, Private Internet
	$ sudo ifconfig eth0:1 10.0.0.1 netmask 255.255.255.0 broadcast 10.0.0.255 up

Configure another cluster node using a different address on the same
subnet, and be sure that ``ping`` works correctly on the new addresses.
You should also use this opportunity to ping the router and DNS server
for this subnet. Check with your network administrator for their
addresses.

.. _server-config-static-ip:

.. index:: Static IP

Setting a Static IP
^^^^^^^^^^^^^^^^^^^

The easiest way to configure a Stackato VM with a static IP address is
to use the :ref:`kato op static_ip <kato-command-ref-op-static_ip>` command.

This command will prompt for the following inputs:

* static IP address (e.g. 10.0.0.1)

* netmask (e.g. 255.255.255.0)

* network gateway (e.g. 10.0.0.254)

* (optional) space-separated list of DNS names servers (e.g. 10.0.0.252 10.0.0.253)

* (optional) space-separated list of DNS search domains (e.g. example.com example.org)

``kato`` will verify the IP addresses given are within legal ranges,
automatically calculate the network / broadcast addresses for you, and
prompt for the 'sudo' password to write the changes.

The command can be run non-interactively with the following arguments:

* --interface
* --ip
* --netmask
* --gateway
* --dns-nameservers (set empty "" to skip)
* --dns-search-domains (set empty "" to skip)
* --restart-network

If the IP address provided differs from the previous one, and the node
isn't configured as a micro cloud, :ref:`kato node migrate
<kato-command-ref-node-migrate>` is run automatically.

As a precaution, the command does not automatically restart networking
services. To do so, run the following commands::

    $ sudo /etc/init.d/networking restart

You will see a deprecation warning about the ``restart`` option, which
can safely be ignored in this context.

.. note::
  If you are setting a new static IP *after* having configured set up a
  cluster, you must reconfigure all other nodes in the cluster to use
  the new MBUS IP address. Run :ref:`kato node attach
  <kato-command-ref-node-attach>` on all non-Core nodes.

Alternatively, these changes could be made by editing the
*/etc/network/interfaces* file manually. For example::
	
    auto eth0
    iface eth0 inet static
        address 10.0.0.1
        netmask 255.255.255.0
        network 10.0.0.0
        broadcast 10.0.0.255
        gateway 10.0.0.254
        dns-nameservers 10.0.0.252, 10.0.0.253
        dns-search example.com, example.org

When DHCP is not used, DNS server IP addresses must be set explicitly
using the ``dns-nameservers`` directive as shown above. Multiple DNS
servers can be specified in a comma separated list.

.. note::

    Stackato clusters running on :ref:`EC2 <server-vm-ec2>` will
    normally be registered with Elastic IP, which will provide local
    dynamic address and DNS configuration over DHCP while publishing an
    external static address for the cluster. You do not have to
    configure the DNS server address in */etc/network/interfaces*.

Note that ``dnsmasq`` does not necessarily reinitialize on ``SIGHUP``.
Therefore, perform the following to reinitialize::

	$ sudo /etc/init.d/dnsmasq restart
	$ sudo /etc/init.d/networking restart

Or use ``sudo shutdown -r`` to exercise a complete restart. Then use
``ifconfig`` to check that the interface has been configured, and
``ping`` to check routing to other hosts on the subnet and out in the
world. Finally, use ``dig @<DNS SERVER IP> <HOSTNAME>`` to check that
DNS is resolving correctly.

In the event of troubleshooting, you can confirm which DNS servers are
being used by dnsmasq by checking the file */var/run/dnsmasq/resolv.conf*.

.. note::

    There may be a performance advantage in locally defining a private
    secondary IP address (:rfc:`1918`) for the controller so that the
    other nodes can be assured of routing directly to it. See your network
    administrator for advice on which addresses and subnets are
    permissible. Once you have this secondary address set up, see the
    :ref:`/etc/hosts <server-config-etc-hosts>` section for final
    configuration of the server.

.. _server-config-etc-hosts:

.. index:: /etc/hosts

Modifying /etc/hosts
^^^^^^^^^^^^^^^^^^^^

The ``/etc/hosts`` file is used to resolve certain essential or local
hostnames without calling upon the DNS. Unless you need to :ref:`change
the local hostname <server-config-hostname>`, you will in general *not*
have to edit ``/etc/hosts`` manually, but when troubleshooting network
issues it never hurts to verify that the file is configured correctly.

As well, various components in a :ref:`Cluster <cluster-setup>`
rely on finding the cluster nodes in ``/etc/hosts``:
the Cloud Controller and the RabbitMQ service in particular.

Stackato will automatically configure ``/etc/hosts`` on the virtual
machine with one entry for the ``localhost`` loopback address and
another for the :rfc:`1918` private IP address of the cluster's Primary
node, for example "10.0.0.1" or "192.168.0.1". All communication between
cluster nodes should be strictly through their private IP addresses and
not on routable addresses provided by the DNS.

Remember that ``/etc/hosts`` does not support wildcards. You must use some 
form of :ref:`DNS <server-config-dns>` for that.

.. only:: not public

  .. note::
	At boot time, Stackato configures ``/etc/hosts`` in ``/etc/dhcp/dhclient-exit-hooks.d/stackato``
	with the IP address reported by ``kato info`` as ``mbusip``.
	This is the interface on which the nats-server process responsible for the MBUS is listening.

Consider a Stackato instance called ``stackato-test`` in domain
``example.com``. The following example is what you should expect to see
on a :term:`micro cloud` installation, where all roles are running on
the same node::

	$ hostname
	stackato-test
	$ ifconfig eth0
	eth0      Link encap:Ethernet  HWaddr 08:00:27:fc:1c:f6
          inet addr:10.0.0.1  Bcast:10.0.0.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fefc:1cf6/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:875142 errors:0 dropped:0 overruns:0 frame:0
          TX packets:106777 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:191340039 (191.3 MB)  TX bytes:23737389 (23.7 MB)
	$ cat /etc/hosts
	127.0.0.1	localhost stackato-test
	10.0.0.1	stackato-test.example.com api.stackato-test.example.com

On a :term:`cluster` installation, the IP address in /etc/hosts will
identify the node hosting the MBUS, usually the same as the Cloud
Controller. On this node, you will see a correspondence between the
network interface ``eth0`` address and ``/etc/hosts`` as in the above
example. On each of the *other nodes* in the cluster, for example DEA
nodes, ``eth0`` will be configured with its own address on
the same subnet, but ``/etc/hosts`` will remain the same..

If modifying ``/etc/hosts`` becomes necessary because of a hostname change,
you can simply edit it as in the following example::

	$ sudo vi /etc/hosts

.. _server-config-dns:

.. index:: DNS

DNS
^^^

The Stackato micro cloud uses :term:`multicast DNS`. to broadcast its
generated hostname (e.g. ``stackato-xxxx.local``). This mechanism is
intended for VMs running on a local machine or subnet.

For production use, the server will need:

* a public DNS record,
* a wildcard CNAME record, and
* a fixed IP address.

For example, a DNS zone file for "stackato.example.com" might
contain::

	stackato.example.com        IN    A        10.3.30.200
	*.stackato.example.com      IN    CNAME    stackato.example.com

The wildcard CNAME record enables routing for the hostnames created for
each application pushed to Stackato. If your networking policy forbids
the use of wildcard records, you will need to add DNS records for each
application pushed to Stackato as well as the following two hostnames:

* **api.** - API endpoint for clients and the URL of the Management Console (e.g. api.stackato.example.com)
* **aok.** - AOK authentication endpoint (e.g. aok.stackato.example.com)

If you intend to expose your applications at URLs on other domains (e.g.
using :ref:`stackato map <command-map>`) add these names to the DNS zone
file as well. For example::

	app.domain.com              IN    CNAME    stackato.example.com

Firewalls and load balancers may require corresponding adjustments.

.. note::
  If your site uses DHCP, configure a static binding to the MAC address
  of the Stackato VM (and be careful not to change the MAC address
  accidentally through the hypervisor). If Stackato is hosted on a cloud
  provider, assign a fixed IP address using the platform's tools (e.g.
  Elastic IP on Amazon EC2 or Floating IP on OpenStack).

With DNS records in place, the multicast DNS broadcast is no longer
necessary. To turn it off on the Stackato server, use the command::
	
	$ kato role remove mdns

.. _server-config-dyndns:

.. index:: dyndns

Dynamic DNS
^^^^^^^^^^^

If you don't have access to a DNS server, you can use a dynamic DNS provider, such as
`ChangeIP <http://www.changeip.com/freedomains.asp>`_
and
`others <https://help.ubuntu.com/community/DynamicDNS#Registering_with_a_Dynamic_DNS_provider>`_,
to provide DNS records.
You will need one that provides wildcard subdomain assignment.

Before registering your domain, be sure that your mail server will accept
email from the provider (for example ``support@changeip.com``).

Create an account, choose a subdomain, and ensure that a wildcard
assignment is made on the subdomain to handle ``api`` and related
application subdomains.  Then wait to receive the authorization email,
and verify the zone transfer before proceeding.


.. index:: DNS Alternatives

.. _server-config-dns-alternatives:

Alternate DNS Techniques
^^^^^^^^^^^^^^^^^^^^^^^^

For situations where mDNS will not work (e.g. running in a cloud hosting
environment or connecting from a Windows system without mDNS support)
but which do not merit the effort of manually configuring a DNS record
(e.g. a test server) alternative methods are available.

.. index:: xip.io

.. _server-config-xip_io:

xip.io
~~~~~~

The quickest way to get wildcard DNS resolution is to use the `xip.io
<http://xip.io>`_ service.

:ref:`Change your hostname <server-config-hostname>` using :ref:`kato
node rename <kato-command-ref-node-attach>` to match the external IP address with
the 'xip.io' domain appended. For example::

    $ kato node rename 10.9.8.7.xip.io

This will change the system hostname and reconfigure some internal
Stackato settings. The xip.io DNS servers will resolve the domain
'10.9.8.7.xip.io' and all sub-domains to '10.9.8.7'. This works for
private subnets as well as public IP addresses.

.. note::
  If your nameservers filter `private IP addresses
  <https://en.wikipedia.org/wiki/IP_address#Private_addresses>`_ from
  DNS responses to protect against `DNS rebinding
  <https://en.wikipedia.org/wiki/DNS_rebinding>`_, ``*.xip.io``
  addresses, and other domains that use this method, will not work.

.. index:: dnsmasq

.. _server-config-dnsmasq:

dnsmasq
~~~~~~~

Locally, you can run :term:`dnsmasq` as a simple DNS proxy which resolves
wildcards for ``*.stackato-test.example.com`` to ``10.9.8.7`` when line
such as the following is present in any of its configuration files::

	address = /.stackato-test.example.com/ 10.9.8.7

You must restart the service to pick up the changed configuration::

	$ /etc/init.d/dnsmasq restart

.. _server-config-add-nameserver:

Adding DNS Nameservers
^^^^^^^^^^^^^^^^^^^^^^

You may need to add site-specific DNS nameservers manually if the
Stackato VM or applications running in Stackato containers need to
resolve internal hosts using a particular nameserver.

To explicitly add a DNS nameserver to a Stackato VM running under DHCP,
edit */etc/dhcp/dhclient.conf* and add a line with the DNS server IP.
For example::

  append domain-name-servers 10.8.8.8;
 
Reboot to apply the changes.

For Stackato VMs with a static IP, add the nameservers when prompted
when running the ``kato op static_ip`` command (see :ref:`Setting a
Static IP <server-config-static-ip>` above).

TCP/UDP Port Configuration
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. include:: ../common/ports.inc

.. _server-config-http-proxy:

.. _server-config-http-proxy-cache:

.. index:: HTTP Proxy Cache

Proxy Settings
^^^^^^^^^^^^^^

If your network has an upstream HTTP proxy that needs to be traversed in
order for Stackato to access the internet, use the ``kato op
upstream_proxy ...`` command **on all DEA nodes** to configure it::

	$ kato op upstream_proxy set 192.168.0.99:3128
	
Then restart Polipo on each DEA::

	$ sudo /etc/init.d/polipo restart
  
Stackato uses a built-in `Polipo
<http://www.pps.univ-paris-diderot.fr/~jch/software/polipo/>`_ web proxy
during staging (100MB of in-memory cache by default) to cache
application dependencies downloaded by package managers that support the
:term:`HTTP_PROXY` environment variable (e.g. pip, PyPM, PPM, NPM, etc).

The command above does the following:

* configures Polipo to use the upstream proxy for staging assets
* configures ``kato`` to use the upstream proxy for patches and upgrades
* sets the http_proxy environment variable in application containers
  (see below) so that applications bypass Polipo and use the upstream
  proxy directly at runtime (after staging).

The command has a ``--no-proxy`` option to bypass the proxy when
accessing certain (normally internal) domains. For example::

  $ kato op upstream_proxy set 192.168.0.99:3128 --no-proxy internal.example.net

To remove the proxy setting::

	$ kato op upstream_proxy delete
	
You will also need to set the ``http_proxy`` and ``https_proxy``
environment variables in the *.bashrc* file of the ``stackato`` user
(for various administrative CLI operations). For example::

  export http_proxy=http://10.0.0.47:8080
  export https_proxy=http://10.0.0.47:8080

The protocol "http://" is required when setting these variables.

.. note::
  Do not set proxy environment variables in the ``/etc/environment``
  file directly as this interferes with internal HTTP transfers of
  application droplets.
  
.. _server-config-application-proxy:

HTTP & HTTPS Proxies for Applications
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
The ``kato op upstream_proxy`` command configures subsequently created
application containers with the HTTP_PROXY environment variable

You can set HTTP and HTTPS proxies *just* for applications (i.e. without
reconfiguring Polipo or ``kato``) by adding
``environment/app_http_proxy`` and ``environment/app_https_proxy``
settings in the dea_ng config using :ref:`kato config set
<kato-command-ref-config>`. For example::

  $ kato config set dea_ng environment/app_http_proxy http://10.0.0.47:8080
  $ kato config set dea_ng environment/app_https_proxy http://10.0.0.47:8080

Adding this configuration sets the 'http_proxy' and 'https_proxy'
environment variables within all subsequently created application
containers, allowing them to connect to external HTTP(S) resources on
networks which disallow direct connections. Unlike ``upstream_proxy``,
this setting requires the protocol string to be set (i.e. ``http://`` or
``https://``)

.. _server-config-filesystem:

VM Filesystem Setup
-------------------

The Stackato VM is distributed with a simple default partitioning
scheme (i.e. everything but "/boot" mounted on "/").

Additionally, some hypervisors (OpenStack/KVM) will start the VM with a
relatively small disk (10GB).

.. warning::
  When setting up a production cluster, additional filesystem
  configuration is necessary to prevent certain nodes from running out
  of disk space.

Some nodes in a production cluster may require additional mount points
on external block storage for:

* services (data and filesystem service nodes)
* droplets (controller nodes)
* containers (DEA and Stager nodes)

Suggestions for mounting block storage and instructions for relocating
data can be found in the :ref:`Persistent Storage
<bestpractices-persistent-storage>` section.

Stackato Data Services vs. High Availability Databases
------------------------------------------------------

Stackato data services do not offer any built-in redundancy. For
business-critical data storage, a high-availability database or cluster
is recommended.

To use an external database instead of the data services provided by
Stackato, specify the database credentials directly in your application
code instead of using the credentials from the :term:`VCAP_SERVICES`
environment variable.

To tie external databases to Stackato as a data service, see the
examples in the :ref:`Adding System Services <add-service>` section.

.. _server-config-https:

.. index:: HTTPS
.. index:: SSL

HTTPS & SSL
-----------

The Stackato VM generates self-signed wildcard SSL certificates to match
the unique ``.local`` hostname it assigns itself at first boot. These
certificates can be found in:

* ``/etc/ssl/certs/stackato.crt`` (Public Certificate)
* ``/etc/ssl/private/stackato.key`` (Used to generate the signed certificates)

Since these certificates are self-signed, rather than issued by a
certificate authority (CA), web browsers will warn that the certificate
cannot be verified and prompt the user to add a manual exception.

To avoid this, the generated certificate for the base URL of the PaaS
can be replaced with a signed certificate issued by a CA.

For additional Org-owned and Shared domains, SSL certificates can be
added using the SNI method described further below. 

.. _server-config-ssl-cert-own-use:

.. index:: SSL Certificates

Replacing the Default SSL Cert
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

On all router and controller nodes, upload your *.key* file to the
*/etc/ssl/private/* directory and your *.crt* file to */etc/ssl/certs/*.
Change the following settings with ``kato config`` to point to the new
files::

  $ kato config set router2g ssl/key_file_path '/etc/ssl/private/example.key'
  $ kato config set router2g ssl/cert_file_path '/etc/ssl/certs/example.crt'

If you are using a signed certificate and wish to enable strict SSL
checking on the internal REST interface (used for communication between
the web console and controller), run the following additional command::

  $ kato config set stackato_rest ssl/strict_ssl true

.. _server-config-sni-support:

Adding More SSL Certs (SNI)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Stackato router supports `SNI
<http://en.wikipedia.org/wiki/Server_Name_Indication>`__, and custom SSL
certificates for domains resolving to the system can be added using the
:ref:`kato op custom_ssl_cert install <kato-command-ref-op-custom_ssl_cert>` command.
Usage::

  kato op custom_ssl_cert install <key-path> <cert-path> <domain> [--wildcard-subdomains]

This must be run on all router nodes in a cluster: the first one as
above, subsequent routers using the ``--update`` flag.

.. note::
  SNI support with multiple Stackato routers works only with TCP load
  balancers (e.g. HAProxy, iptables, F5) not HTTP load balancers (e.g.
  Nginx, Stackato load balancer). 

.. _server-config-ssl-cert-chain:

.. index:: SSL Certificate Chain

CA Certificate Chaining
^^^^^^^^^^^^^^^^^^^^^^^

When using a signed certificate for Stackato, the certificates in the
chain must be concatenated in a specific order:

* the domain's crt file
* intermediate certs
* the root cert

For example, to create the final certificate for the chain in Nginx
format::

    $ sudo su -c "cat /etc/ssl/certs/site.crt /path/to/intermediate.crt /path/to/rootCA.crt > /etc/ssl/certs/stackato.crt"

Once the cert is chained, restart the router processes::

    $ kato restart router

Verify that the full chain is being sent by Nginx using ``openssl``. You
should see more than one number in the list. For example::

    $ openssl s_client -connect api.stacka.to:443
    ---
    Certificate chain
     0 s:/C=CA/ST=British Columbia/L=Vancouver/O=ActiveState Software Inc./OU=Stackato/CN=*.stacka.to
       i:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance CA-3
     1 s:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance CA-3
       i:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance EV Root CA
     2 s:/C=US/O=DigiCert Inc/OU=www.digicert.com/CN=DigiCert High Assurance EV Root CA
       i:/C=US/O=Entrust.net/OU=www.entrust.net/CPS incorp. by ref. (limits liab.)/OU=(c) 1999 Entrust.net Limited/CN=Entrust.net Secure Server Certification Authority


.. _server-config-ssl-cipher-suites:

.. index:: Router Cipher Suites

Customizing the Cipher Suites
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The router's `TLS cipher suite
<http://en.wikipedia.org/wiki/Cipher_suite>`_ can be modified using
``kato config``. For example::

  kato config set router2g ssl/cipher_suite 'ALL:!ADH:!EXP:!LOW:!RC2:!3DES:!SEED:RC4+RSA:+HIGH:+MED'

The setting above is the default for the Stackato router. See OpenSSL's
`Cipher List Format
<https://www.openssl.org/docs/apps/ciphers.html#CIPHER_LIST_FORMAT>`_
and `Cipher Strings
<https://www.openssl.org/docs/apps/ciphers.html#CIPHER_STRINGS>`_
documentation for valid values.


.. _server-config-ssl-cert-own-create:

.. index:: Generating SSL Certificates

Generating a self-signed SSL certificate
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can re-generate Stackato's self-signed SSL certificate by running
the following command on the VM::

  $ kato op regenerate ssl_cert
  
To do essentially the same operation manually (substituting
"hostname.mydomain.com" with your own details)::

	$ mkdir ~/hostname.mydomain.com
	$ cd ~/hostname.mydomain.com
	$ (umask 077 && touch host.key host.cert host.info)
	$ openssl genrsa 2048 > host.key
	$ openssl req -new -x509 -nodes -sha1 -days 365 -key host.key -multivalue-rdn \
		-subj "/C=CA/emailAddress=email@mydomain.com/O=company_name/CN=*.mydomain.com/CN=mydomain.com" \
		> host.crt

For specific configurations that can be used in the ``-subj`` option,
see http://www.openssl.org/docs/apps/req.html.

Following that, run::

	$ openssl x509 -noout -fingerprint -text < host.crt > host.info
	$ chmod 400 host.key host.crt

To get the router to use the new certificate and key files, follow the
steps in the :ref:`Using your own SSL certificate
<server-config-ssl-cert-own-use>` section above.

.. MARKUP Note that spaces are necessary below for correct alignment on display.

With any self-signed SSL certificate, you will get browser warning
messages. The certificate will need to be added to the browser
exception rules, which you will be prompted to do so when visiting
one of your apps via HTTPS for the first time.

.. _server-config-alternative-endpoints:

Alternative Log and API Endpoints
---------------------------------

You can deploy Stackato with API and log endpoints on a different domain
from the deployed applications. For example, you might want to have the
API endpoint on a domain which is only resolvable within the corporate
network, limiting API access to the system and hiding the use of
Stackato from application end users.

.. _server-config-api-endpoint-alias:

API Endpoint Alias
^^^^^^^^^^^^^^^^^^

To set up the endpoint "api.mydomain.com" on a system that is configured
by default as "api.example.com"::
  
  $ kato config push router2g cluster_endpoint_aliases api.mydomain.com
    
To remove the alias::
  
  $ kato config pop router2g cluster_endpoint_aliases api.mydomain.com
    
Use this in conjunction with the :ref:`appOnlyRouter
<router-app-only-router>` setting on external router nodes to block
access to the default API endpoint. 

.. _server-config-log-endpoint-alias:

Logs Endpoint Alias
^^^^^^^^^^^^^^^^^^^

To move the default ``logs.`` endpoint set the ``applog_endpoint:
hostname`` key in ``kato config``::

  $ kato config set applog_endpoint hostname logs.mydomain.com


.. _server-config-quota-definitions:

Quota Plans
-----------

.. note::
  In Stackato 2.10 and earlier, every User and Group had a quota. In 3.0
  (Cloud Foundry v2) Quota Plans are applied at the Organization
  level (i.e. members of an organizations share its quota).
  
Quota plans (called "quota definitions" in the API) define limits for:

* physical memory (RAM) in MB
* number of services
* number of droplets stored (per application) for versioning and rollback 
* ``sudo`` privilege within application containers

Each organization is assigned a quota plan, and all users of an
organization share the defined limits.

Use the ``stackato quota ...`` commands to modify quota plans:

* :ref:`stackato quota configure <command-quota configure>`
* :ref:`stackato quota create <command-quota create>`
* :ref:`stackato quota delete <command-quota delete>`
* :ref:`stackato quota list <command-quota list>`

Existing quota plans can also be viewed and edited in the
Management Console :ref:`Quota Plans settings
<console-settings-quota-definitions>`


.. _server-config-sudo:

sudo
^^^^

Quota Plans can give all users in an Organization the use of the
``sudo`` command within application containers. This option is disabled
by default as a security precaution, and should only be enabled for
Organizations where all users are trusted.

.. _server-config-allowed-repositories:

Allowed Repositories
^^^^^^^^^^^^^^^^^^^^

Users (with our without ``sudo`` permissions) can install Ubuntu
packages in application containers by requesting them in the
:ref:`requirements <stackato_yml-requirements>` section of an
application's *manifest.yml* or *stackato.yml* file. The system allows
package installation only from those repositories specified in the
:ref:`Allowed Repos <console-settings-stackato>` list in the Management
Console.

This list can also be viewed and modified at the command line using
:ref:`kato config <kato-command-ref-config>`. For example, to view the
current list::

  $ kato config get cloud_controller_ng allowed_repos
  - deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
  - deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
  - deb http://security.ubuntu.com/ubuntu precise-security main universe

To add a repository::

  $ kato config push cloud_controller_ng allowed_repos 'deb http://apt.newrelic.com/debian/ newrelic non-free'
  - deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
  - deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
  - deb http://security.ubuntu.com/ubuntu precise-security main universe
  - deb http://apt.newrelic.com/debian/ newrelic non-free

Once a repository has been added to the list, **the GPG key must also be
added** to the :ref:`Docker base image <docker-modify-container>` on
each DEA (or the :ref:`Docker registry <docker-registry>` server if
configured).

For example, to trust the GPG for the New Relic repository, add the
following line to the *Dockerfile* for the base image::

  RUN wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -


.. _server-config-container-NFS-mounts:

Container NFS Mounts
--------------------

.. warning::
  Configuring Stackato to allow user applications to mount NFS
  partitions has serious security implications. See the :ref:`Privileged
  Containers <docker-privileged-containers>` section for details.

By default, application containers are unable to mount external
filesystems (other than the built-in :ref:`Filesystem Service
<persistent-file-system>`) via network protocols such as NFS.

If the system has been configured to use ref:`privileged containers
<docker-privileged-containers>` and ``sudo`` permissions have been
explicitly allowed in the quota, NFS partitions can be mounted in
application containers using application configuration similar to the
following *stackato.yml* excerpt::

  requirements:
    ubuntu:
        - nfs-common
  hooks:
    pre-running:
      - mkdir /mount/point
      - sudo mount nfs.server:/path/to/export /mount/point

The IP address of the NFS server must also be added to the
``docker/allowed_supnet_ips`` list. For example::

  $ kato config push fence docker/allowed_subnet_ips 10.0.0.110


