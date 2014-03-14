.. index:: Application SSO

.. index:: Application Single Sign-On

.. _application-sso:

Application Single Sign-On (SSO)
================================

Web applications deployed to Stackato can take advantage of Stackato's
authentication mechanism to restrict access to authenticated users of
the Stackato PaaS. This feature is called Application SSO. 

SSO can be enabled on a per-application basis. Once enabled, end users
must log in to Stackato before accessing the application. The login
process is completely transparent to the application, and requires no
custom code in the application.

.. _application-sso-enable:

Enabling Application SSO
------------------------

To enable SSO for an application via the Management Console, select
**Stackato single sign-on** under **Application Access** in the
application Settings view.

To set this with the ``stackato`` client, use the ``--sso-enabled``
option to the :ref:`push <command-push>` command, or set
:ref:`sso-enabled: true <stackato_yml-sso>` in *stackato.yml* (or in a
``stackato:`` block within *manifest.yml*).

.. _application-sso-caveats:

SSO Behavior & Caveats
----------------------
  
HTTPS Only
^^^^^^^^^^
  
Application SSO is only supported over HTTPS. If users try to connect to
an SSO application via HTTP, Stackato will redirect the request to
HTTPS. If the site is not served via HTTPS, this will fail.

'/sso-callback' Path
^^^^^^^^^^^^^^^^^^^^

For SSO applications, Stackato reserves the '/sso-callback' path on the
root application URL for internal use (e.g.
"https://app.example.com/sso-callback"). Applications that use SSO will
not be able to serve requests under this path. 

.. _application-sso-headers:

SSO HTTP Headers
----------------

When SSO is enabled each HTTP request that is made to the app will have the
following headers added to it::

  "x-authenticated-user-id": "5d30c4r3-9985-4aa7-b371-146a7b0832b0"
  "x-authenticated-user-username": "jouser"
  "x-authenticated-user-email": "jouser@example.com"

Application developers may choose to write code to access these HTTP
headers if required.

.. _application-sso-env:

SSO Environment Variables
-------------------------

The VCAP_APPLICATION :ref:`environment variable <environment-variables>`
contains an ``sso_enabled`` property, set to 'true' or 'false'. You can
write code to inspect this property if needed. For example, the
application can refuse to function when SSO is disabled.



