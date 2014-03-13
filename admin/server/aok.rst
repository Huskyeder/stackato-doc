.. _aok:

.. index:: Authentication Server (AOK)

AOK Authentication Server
=========================

AOK is Stackato's authentication management service (replacing Cloud
Foundry's UAA Server). It issues tokens via OAuth2 for client
applications such as the ``stackato`` client and the Management Console.
AOK can connect to other back-end SSO services such as LDAP by using
different :ref:`Strategies <aok-strategies>`.

End User Login
--------------

Web
^^^

Users log in to the web Management Console as they would with any other
web application. The Management Console checks with the AOK endpoint (e.g.
\https://aok.stackato.example.com) in the background. 

Client
^^^^^^

If the strategy has been changed to something other than `builtin` (see 
below), then users connecting with the :ref:`stackato <client>` client 
should be aware that:

* The user must enter their identifier in the format expected by the
  :ref:`strategy <aok-strategies>` used by AOK (e.g. username or email
  address).
  
* When using an existing authentication token to log in as a second user
  (e.g. an admin connecting as another user), use the second user's
  stackato username, *not the identifier used by AOK's strategy*.

These caveats also apply when using other Cloud-Foundry-compatible clients.

.. _aok-strategies:

Strategies
----------

The term *strategy* refers to the method used to authenticate users.
There are currently two supported strategies:

* **builtin**: The default `builtin` strategy uses a local database of
  users and passwords to authenticate. 

* **ldap**: The `ldap` strategy authenticates using the LDAP server
  specified in :ref:`kato config <aok-configuration>`. Any user that can
  successfully authenticate with the LDAP server will be allowed to use
  Stackato and will have a (non-admin) user account created for them
  automatically. The LDAP server must return an email address for the
  user to allow them to log in to Stackato. AOK will look for the email
  address under the ``mail``, ``email``, and ``userPrincipalName``
  attributes.
  
  LDAP groups are not currently supported as a visible construct in
  Stackato.
  
.. only:: not public

  * **google_apps**: Authenticates users on a `Google Apps for Business
    <http://www.google.com/enterprise/apps/business/>`_ domain.
    ``stackato`` clients will need to authenticate using the
    :ref:`stackato token <command-token>` command.
      
The `use` key in the configuration controls the strategy that AOK
will use. This value must correspond exactly to one of the supported
strategy names.

.. _aok-configuration:
  
Configuration
-------------

To configure AOK, set the following keys in the AOK config using :ref:`kato
config set <kato-command-ref-config>`:

* strategy:

  * use: set to either 'builtin' (default) or 'ldap'. The builtin
    strategy requires no further modification. The ldap strategy
    requires setting options in the corresponding block below.
  
  * ldap:
  
    * host: hostname or IP of the LDAP server
    * port: LDAP server port, typically 389
    * method: plain, ssl, or tls
    * base: list of domain components (e.g. 'dc=example, dc=com')
    * uid: LDAP attribute name for the user name that will used in the
      login form. Active Directory (AD) is typically 'sAMAccountName' or
      'UserPrincipalName', while OpenLDAP is 'uid'.
    * email: the LDAP attribute containing the user's fully qualified
      email address. An email address attribute is necessary for AOK to
      work properly with the cloud controller. This may be a scalar
      attribute or an array of attributes to search. The default is
      shown. The first non-null attribute will be used (AOK will not
      validate that this is an email address). The default attributes are:
      
       * mail
       * email
       * userPrincipalName
       
    * bind_dn: (optional) credentials for user lookup (e.g.
      'cn=Administrator,cn=Users,dc=example,dc=com'). LDAP servers that
      allow anonymous bind will not require this setting.
    * password: (optional) default credentials for user lookup
    * try_sasl: (optional) when set to true attempts a SASL connection
      to the LDAP server
    * sasl_mechanims: (optional) 'DIGEST-MD5' or 'GSS-SPNEGO'

.. only:: not public

  * google_apps:
  
    * domain: your Google Apps domain. 

.. note::

  An additional 'name_proc' option in the 'ldap' block allows users to
  enter email addresses instead of LDAP user names, matching the user name
  entered with the format of the uid attributes. For example, value of
  'sAMAccountName' in AD contains only the Windows user name. If your
  users prefer using email to login, the following 'name_proc' value will trim the
  email string down to just the Windows login name::
  
      Proc.new {|name| name.gsub(/@.*$/,'')}
  
  Value must be valid ruby code. Since the provided code will be
  accepting arbitrary user input, administrators are urged to use this
  setting only when absolutely necessary, and to check the code
  thoroughly for possible security implications.
  
To see the the default AOK configuration (default settings) run the command::

  $ kato config get aok
  
Settings are nested as per the option list above. To set an option,
specify the full config path to that option. For example::

  $ kato config set aok strategy/ldap/base 'dc=yourdomain, dc=com'

To add an attribute to the 'email' array::

  kato config push aok strategy/ldap/email "ADMailAcct"

To set the entire array in one step, use the ``--json`` option::

  kato config set --json aok strategy/ldap/email '["mail","ADMailAcct", "email"]'


User Management
---------------

When using AOK with any strategy other than 'builtin', users in Stackato
will be created automatically for any user who successfully
authenticates.

Administrators can still use the functions as before, but should be
aware of the following caveats:
  
* Admins may manually create users if they wish. This may be useful if the 
  admin wants to pre-assign users to groups in Stackato before those users
  have logged in for the first time. The admin must create the user with the
  same username that AOK will receive from the strategy.
  
* Passwords set while creating users or using the password-change function 
  will be disregarded - Stackato/AOK does not manage the external
  authentication systems.
  
* Admins may delete users, but the user will be recreated if they log in
  again via AOK. If an admin wishes to prevent a user from using Stackato, the
  user's login credentials should be revoked in the external authentication 
  system.

First Admin User Setup
----------------------

When setting up a Stackato system using AOK, complete the "Set Up First
Admin User" form shown by the web Management Console before configuring
LDAP authentication. This creates an administrative user, and changes
the password of the 'stackato' user on the VM to match whatever was
entered in the form.

You may use either a temporary username (e.g. "firstuser") which will be
deleted later, or use the LDAP username you will ultimately use once AOK
is configured.

Once the first user has been created:

* Log in to the micro cloud VM or Core node as the 'stackato' user (with
  the password set previously)

* :ref:`Configure AOK <aok-configuration>` to use LDAP

* Set the ``admin_user`` key with the desired LDAP admin username::

    $ kato config set aok strategy/ldap/admin_user <username>

  This user will be granted admin privileges when logging in for the
  first time.
  
* If you created a temporary admin user, delete it at this point.


Default Organization & Space
----------------------------

When using LDAP authentication, new users logging in to the Management
Console will be automatically added to a default organization and space
if those defaults have been configured by the admin.

On the Organization and Space views in the Management Console, admins
will see "Set as Default Organization" or "Set as Default Space"
respectively. To set this using the ``stackato`` client::

  $ stackato update-org --default [org-name]
  $ stackato update-space --default [space-name]
  
The ``--default`` option is also available with the :ref:`create-org
<command-create-org>` and :ref:`create-space <command-create-space>`
commands, for use when creating new default organizations and spaces.

Without a default organization and space set, new users logging in via
LDAP will be added as users to Stackato, but will not be a member of any
organization or space.


