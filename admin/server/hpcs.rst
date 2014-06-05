.. _vm-hpcs:

.. index:: HPCS
.. index:: HP Public Cloud 

HP Cloud Services
=================

Stackato is available as a public server image on `HP Helion Public
Cloud <http://hpcloud.com/>`_. You can run a single instance of the
Stackato VM under the terms of the `Micro Cloud License Agreement
<http://www.activestate.com/stackato/micro-cloud-license-agreement>`_.
If you intend to create a production Stackato cluster, `contact
ActiveState <http://www.activestate.com/get-quote>`_ about Stackato
Enterprise.

.. only:: not public

  .. _server-vm-marketplace:
  
  Partners and Solutions Setup Wizard
  -----------------------------------
  
  .. note::
    These instructions launch 2.10.4 using the old HP Classic Cloud
    Management Console. These instructions are deprecated until the
    Marketplace wizard is updated. 
    
  HP Cloud offers a quick, semi-automated method of setting up a Stackato
  VM through their Partners and Solutions page for Stackato.
  
  1. `Log in to HP Cloud <https://account.hpcloud.com/>`__
  
  2. Navigate to the `Partners and Solutions page for Stackato <https://marketplace.hpcloud.com/stackato>`_.
    
  * `https://marketplace.hpcloud.com/stackato <https://marketplace.hpcloud.com/stackato>`__
    
  3. Step through the setup wizard:
  
  * choose a region and availability zone
  * set a server name
  * choose an instance flavor (minimum standard.small)
  * choose a `Key Pair <https://docs.hpcloud.com/mc/compute/key-pairs/>`_
  * choose a Security Group (see :ref:`HPCS Security Groups <server-vm-hpcs-firewall>` below)
  * Click the **Install** button
  
  4. HP Cloud will create and boot a new Stackato instance for you. To finish setting up the VM:
  
  * Navigate to the instance in the HP Cloud Console (Dashboard > Computer > your chosen availability zone)
  * Click the settings icon
  * Select View Connection Info
  * Connect to the new VM and set up:
    
    * :ref:`DNS <server-vm-hpcs-dns>` 
    * :ref:`Stackato <server-vm-hpcs-config>` itself.


.. _server-vm-hpcs-firewall:

.. index:: HPCS Security Groups

Security Group Settings
-----------------------

Before launching a Stackato VM instance, you will need to create a
security group which exposes only the necessary network ports (or
use/modify an existing group with the properties described below).

#. Click `Project > Compute > Access & Security
   <https://horizon.hpcloud.com/project/access_and_security/>`__ to see a
   list of the existing security groups available in your account.

#. Click **+ Create Security Group** and enter a name and description for
   your new security group (e.g. Name: "stackato-micro", Description:
   "Public-facing Stackato micro cloud"). If you have a security group
   rules matching the requirements below, skip this step and launch a
   Stackato VM instance.

#. Click the **Manage Rules** button for the new security group.

   By default, the new group will have open egress rules. Leave these in
   place unless you have special security requirements forbidding this, as
   Stackato requires access to several remote domains for updates and
   package management.

#. Click **+ Add Rule** and enter the following new ingress rules:

.. cssclass:: fields table-striped table-bordered table-condensed

=====   ======    =========
Rule    Remote    CIDR
=====   ======    =========
HTTP    CIDR      0.0.0.0/0
HTTPS   CIDR      0.0.0.0/0
SSH     CIDR      0.0.0.0/0
=====   ======    =========

If you require a more stringent set of rules (e.g. restricting SSH
access to a specific IP range), modify the rules above. See the
:ref:`Stackato port requirements <cluster-config-ports>` section for
details on which ports are required for which services.

.. include:: ../common/harbor-ports.inc
  
.. _server-vm-launch-instance:

.. index:: HP Public Cloud - Starting a Stackato VM Instance

Starting a Stackato Instance
----------------------------

Once you have created a security group appropriate for a Stackato micro
cloud, launch a

#. `Log in to HP Public Cloud <https://horizon.hpcloud.com/>`__

#. Select the desired **Region/Availability Zone** from the drop down list at the top.

#. Click **Project > Compute > Instances** in the left nav.

#. Click the **+ Launch Instance** button near the top right, then proceed through the following settings.


Instance Details:
^^^^^^^^^^^^^^^^^

* Availability Zone: *your choice*
* Instance Name: *your choice*
* Flavor: standard.small (minimum), standard.medium or greater (recommended)
* Instance Count: 1
* Instance Boot Source: Boot from Image
* Image Name: ActiveState Stackato v |release|

Access & Security:
^^^^^^^^^^^^^^^^^^

* Key Pair: *your choice* 
* Security Groups: *choose the security group created above*

The **Networking** and **Post-Creation** tabs can be left as-is in most
cases.

Click the **Launch** button to start the new Stackato VM instance.


.. _server-vm-hpcs-floating-ip:

.. index:: HP Public Cloud -  Associate Floating IP

Associate Floating IP
---------------------

The instance will boot without a public-facing IP address. To associate
a public, floating IP address click the **Associate Floating IP** (or
**More > Associate Floating IP**) button in the **Actions** column of
the new instance's record in the main **Instances** view.

The **Manage Floating IP Associations** dialog lets you map an
unallocated floating IP to the new instance. If you see "No floating IP
addresses allocated" you can allocate a new one with the "**+**" button.

Once you have associated a floating IP to the instance, proceed with
configuring DNS.

.. index:: HPCS DNS

.. _server-vm-hpcs-dns:

Configuring DNS
---------------

Stackato requires :ref:`DNS mappings <server-config-dns>` to work
properly in a cloud hosting environment.

For temporary or test instances of Stackato you can use the :ref:`xip.io
<server-config-xip_io>` wildcard DNS service for resolving the fixed or
floating IP address of your Stackato VM **instead** of setting up a DNS
record.

For a more permanent (e.g. production) system, you should create a DNS A
and CNAME record for the Stackato VM.

For example, if you wanted your Stackato PaaS to be named
"stackato-test" on your existing domain "example.com", you would insert
the following in your DNS zone file::

	stackato-test   IN  A     192.0.43.11
	*.stackato-test IN  CNAME stackato-test

The first line uses the Fixed Public IP address assigned by HPCS or a
Floating Public IP that you have assigned to the Stackato instance.

The second line is a wildcard entry, used for "api" (the API Endpoint
used by clients) and the sub-domains created for the applications
deployed to Stackato.

Manage Records via HP Cloud
^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you manage your domains using HP Public Cloud, click **Project >
Manage DNS > Domains**.

#. Choose or create a domain for your new Stackato instance. 

#. Click the **Manage Records** button for your chosen domain.

#. Click the **+ Create Record** button.

#. Set an "A" record under Record Type. For example:

  * Record Type: A
  * Name: stackato-test.example.com.
  * IP Address: 15.125.90.97
  * TTL: 1800
  * Description: Stackato PaaS on HP Cloud

  Click **Create Domain Record** to save.
  
#. Set a "CNAME" wildcard record for the same instance which points to
   the "A" record. For example:

  * Record Type: CNAME
  * Name: \*.stackato-test.example.com.
  * Canonical Name: stackato-test.example.com
  * TTL: 1800
  * Description: Wildcard for PaaS-hosted apps
  

.. _server-vm-hpcs-config:

.. index:: HP Cloud - Configuring Stackato

Configuring Stackato
--------------------

Log in to the instance using ``ssh`` with the username `stackato` and
default password `stackato`::

	$ ssh stackato@stackato-test.example.com
  
Do *not* change the ``stackato`` password at this point - this will
happen in a subsequent step.

Disable mDNS, as this service is not useful on a remote network::

  $ kato role remove mdns
  
Use the :ref:`kato <kato-command-ref>` utility to set the server's
hostname and internal Stackato configuration to match the DNS name you
are using. For example::

  $ kato node rename stackato-test.example.com
  

.. index:: HPCS Create Admin

.. _server-vm-hpcs-admin:

Create Admin User
-----------------

Copy the fully qualified hostname of your instance into your web
browser's address bar and load the page. The SSL certificate for the
Stackato Management Console is self-signed, so you will need to manually
accept this certificate in your browser. See the :ref:`HTTPS section
<server-config-https>` for information on using your own certificate.

The Stackato :ref:`Management Console <management-console>` will prompt
you to create the first admin user for the system. Set a username (an
email address) and password, read and accept the Terms of Use Agreement,
and click **Complete Setup**.

.. note::
  **The password you choose here becomes the login password for the**
  ``stackato`` **user on the VM** (e.g. for ``ssh`` access).

Once you have created the first admin user, you can add additional
users, admins, :ref:`organizations and spaces <orgs-spaces>`, start
pushing applications, and configure the system further using the
Management Console. 


.. index:: python-novaclient

.. _server-vm-hpcs-nova:

python-novaclient
-----------------

The `python-novaclient <https://launchpad.net/python-novaclient>`_ command
line utility can be used as an alternative to the Horizon web interface.

The `HP Extended Python Novaclient <https://docs.hpcloud.com/cli/nova>`_
is the recommended version to use with HP Cloud Services. The standard
version is available from the `Nova project page
<https://launchpad.net/nova>`_ or via ``pip`` or ``pypm``.

You will need to set up some local environment variables for ``nova`` to
interact with your account. For example:

.. parsed-literal::

  OS_USERNAME='*admin@example.com*'
  OS_PASSWORD='*passwd*'
  OS_TENANT_NAME='*admin@example.com*'
  OS_AUTH_URL=https://region-a.geo-1.identity.hpcloudsvc.com:35357/v2.0/
  OS_REGION_NAME=az-*n*.region-a.geo-1

See the `HP Extended Python Novaclient
<https://docs.hpcloud.com/cli/nova>`_ page for a general overview.

.. note::

	On 2012-05-28, HP Cloud Services reported a vulnerability in Nova API handling.
	When a security group is created that uses a protocol defined in the incorrect case
	(e.g. "TCP" rather than "tcp") it causes a later string comparison to fail.
	This leads to Security Groups not being set correctly.

