.. _oem-customize:

.. index:: OEM Branding

OEM Customization
=================

Stackato OEM customers can distribute a customized Stackato VM or make a
branded version available on their IaaS. Making these changes persistent
in the VM image requires the following general steps: 

* boot the Stackato VM
* make modifications to certain files and config settings (see below)
* :ref:`reset the "firstboot" flag <oem-firstboot-process>`
* shut down the VM

The branded VM can then be distributed or uploaded to the IaaS image
store for use by end customers.

Stackato customers without an OEM contract may not redistribute or the
VM, but can use the techniques described in the :ref:`VM Renaming
<oem-customize-vm-renaming>`, :ref:`Key Generation
<oem-customize-key-generation>`, and :ref:`Patching <oem-patching>`
sections for modifying and maintaining VM images used within their
organization.

.. seealso::
  :ref:`Theming and Customization <customize>` for a more general guide
  on theming the Management Console. 

.. _oem-customize-branding:

Styling and Branding
--------------------

The following four files override the Stackato defaults for various
configurable parts of the interface::

  /s/static/console_settings.json
  /s/static/console_support_template.ejs
  /s/static/console_eula_template.ejs
  /s/static/console_welcome_template.ejs

Values specified in these files become the new defaults. They are loaded
early on in the Console start up, so they are applied even on the first
user setup page once the VM has been booted.

These files survive upgrades and patches, and will be loaded if they
exist. Regardless of which defaults are used, admins can always override
them in **Settings > Console**.

The *console_settings.json* file contains a JSON object with the
following settings (with example values)::

  {
    "product_name": "Example PaaS",
    "company_name": "ExampleCo",
    "vendor_version": "3.2",
    "default_locale": "en",
    "product_logo_favicon_url": "/s/static/example_logo_favicon.png",
    "product_logo_header_url": "/s/static/example_logo_header.png",
    "product_logo_footer_url": "/s/static/example_logo_footer.png",
    "background_color": "#ffffff",
    "style": "body {color: #134840; font-size: 16px;}",
    "external_docs_url": "http://docs.example.com/",
    "use_local_docs": "false"
    "client_version": "1.1"
    "client_linux_ix86_url":"/s/static/linux-client-x86.tar.gz",
    "client_linux_x86_64_url":"/s/static/linux-client-x86_64.tar.gz",
    "client_macosx_url":"/s/static/mac-client.dmg",
    "client_win32_url":"/s/static/windows-client.zip"
  }

CSS style overrides should be inserted under ``"style:"`` using the same
technique described in the :ref`Custom Stylesheet <customize-css>`
section. Since JSON cannot store multi-line strings, the ``"style"``
value must be a single line; use your favorite CSS minifier.

The three template files should contain HTML/EJS. Use the default pages
shown in :ref:`Console Settings <console-settings-console>` as a
starting point for creating this content.


.. _oem-customize-rename-client:

Renaming the Client
-------------------

The ``stackato`` client is distributed as a single file executable for
Windows, OS X and Linux (x86 and x86_64). Zip files containing
executables for each platform can be found in the ``~/stackato/static``
directory. 

Some customers may wish to repackage and rename these CLI executables to
match their own branding. To do so:

* unzip each archive
* change the name of the executable
* re-zip the contents with the desired filename
* save the archives to the ``/s/static/`` directory **of each Router node** 
* change the filenames in the **console_settings.json** file


.. _oem-customize-error-pages:

Error Pages
-----------

To expose customized error pages, create the following HTML files in
*/home/stackato/stackato/static/vendor/errors/* on each Router node:

* 404.html
* 422.html
* 500.html
* 502.html
* app-not-available.html

When present, these files will be used to display the corresponding HTTP
errors.

The default error page files in
*/home/stackato/stackato/code/console/errors/* can be used as a
reference, but should not be modified directly as changes may be lost
during upgrades or patches.


.. _oem-customize-kato-config:

Kato Configuration Keys
-----------------------

There are various configuration keys you may wish to override when
branding your Stackato VM. To change these, set the following keys in
the cloud controller config using :ref:`kato config set
<kato-command-ref-config>`.

* cloud_controller_ng:

  * info:

    * name: a short product name or identifier with no spaces
    * support_address: this email address will be emitted by some error messages
    * description: the product name

  * app_store:

    * default_icon: set the URL to a default icon to use for app store items
    * stores: a set of key-value pairs defining individual app store sources as:

      * <name-of-store>:
  
        * content_url: <url-of-store>
        * enabled: true

You may also wish to adjust other keys. Use ``kato config get ...`` to
check the default values, and contact ActiveState support if you have
any questions about changing particular settings. 

.. _oem-customize-vm-renaming:

VM Renaming
-----------

During :ref:`first boot <oem-firstboot-process>`, the VM is given a
dynamically generated hostname (e.g. ``stackato-9zks.local``). You may
override the ``stackato-`` prefix with your own by injecting an
environment variable into the upstart process at
**/etc/init/stackato-firstboot.conf**. Under the line::

  env STACKATO_HOME=/home/stackato

Add your own line::

  env OEM_HOSTNAME_PREFIX=oemprovider

This causes a name such as ``oemprovider-a94b.local`` to be generated on
next boot. To disable renaming::

  $ touch /home/stackato/.stackato-disable-rename

The default name of ``stackato.local`` or the IaaS-assigned hostname
(e.g. via cloud-init) will be used. You may also direct ``kato`` to name
the node during the next boot using a :ref:`kato op defer
<kato-command-ref-op-defer>` command::

  $ kato op defer "node rename myhost.example.com --no-restart"

.. _oem-customize-key-generation:

Key Generation
--------------

During the firstboot sequence the following keys are regenerated:

* The password for the PostgreSQL database used by the cloud_controller,
  aok, stackato_rest and postgresql_node processes.
* The password for the MySQL data service
* Authentication tokens and secrets for the cloud_controller,
  stackato_rest, aok and data services
* An encryption key for the cloud controller database
* Tokens which data services use to register with the cloud controller
* SSH keys are generated
* A self-signed SSL certificate is generated

These keys may be set using the various *kato op regenerate* commands.
For more information run::

  $ kato op regenerate --help

In addition, a redis prefix is generated from a placeholder value the
first time *kato start* is run. This may be re-triggered by running::

  $ kato config set redis_node command_rename_prefix "protect-command-prefix"

To reset all keys on the next boot, run the following commands::

  $ kato op defer "op regenerate all --no-prompt" --post-start
  $ kato config set redis_node command_rename_prefix "protect-command-prefix"
  $ touch /home/stackato/.stackato-firstboot

.. note::
  It may take slightly longer than normal for the Stackato to finish
  starting. If you are experiencing issues after booting, check the log
  files in **/var/log/stackato** for errors


.. _oem-patching:

Patching
--------

It should be safe to apply all ActiveState-issued patches to your VM
prior to rebooting.

If you wish to change the url of the patch server, you may set the
following config setting::

  $ kato config set patch base_url "http://www.example.org/patches"

You may also disable ssl validation::

  $ kato config set patch disable_ssl true

.. warning::
  Altering these values is not supported by ActiveState, and doing so
  makes the OEM vendor responsible for subsequent patches. The format of
  patches and structure of the patching system may be subject to change.

.. _oem-firstboot-process:

Firstboot Squence
-----------------

When a Stackato VM boots for the first time, it runs a series of
"firstboot" scripts. Once OEM modifications have been made, these
scripts must be set to run again on the **next** boot (i.e. the first
boot by the OEM users) by executing the following command::

  $ touch /home/stackato/.stackato-firstboot

Once this file is created, you may shut down the VM (e.g. ``sudo
shutdown -h now``) and copy the VM for distribution. The next boot of
the VM image will show all configured branding changes.

