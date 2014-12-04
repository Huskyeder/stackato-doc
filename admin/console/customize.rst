.. _customize:

.. index:: Theming and Customization

Customization
=============

A Stackato PaaS can be extensively customized and themed. PaaS
administrators can add or remove runtimes, frameworks and services from
the system, and change the look and content of the :ref:`Management
Console <management-console>` interface.



Console Settings
----------------

The Management Console is modified mainly through the **Settings >
Console** pages. Settings are saved as variables which can subsequently
be used in HTML pages via the `Embedded JavaScript (EJS)
<http://embeddedjs.com/>`_ templating engine.

Product
^^^^^^^

* **Product Name**:  Overrides all occurrences of 'Stackato'
* **Company Name**: Overrides all occurrences of 'ActiveState Software'
* **Vendor Version**: Overrides all occurrences of the Stackato version number.
* **Default Locale**: Sets the default locale of the console if the users current locale isn't recognized. Currently, only the 'en' localization is complete.
* **External Docs URL**: The link to direct users to to view docs. Defaults to the current documentation published to docs.stackato.com. Ticking 'Use local docs' will cause this URL to be ignored and the docs from the VM will be served instead.

Client
^^^^^^

The Stackato CLI client version number and the paths or URLs to the
downloadable archives for each platform.

Local paths are relative to the */home/stackato/stackato/* directory
(Router node, see :ref:`Renaming the Client <customize-rename-client>`
below), but HTTP URLs can also be used for externally hosted files. 

The client executables served from the VM are the latest version
available at the time of the Stackato VM release, but updated clients
may become available between releases. The current release of the
Stackato CLI client is always available from the `ActiveState Downloads
site <http://downloads.activestate.com/stackato/client/>`_.

Look and Feel
^^^^^^^^^^^^^

* **FavIcon Logo URL**: The favicon to use. Recommended to be 32x32px image/png.
* **Header Logo URL**: The logo image to use in the header. Size can vary although anything bigger than 50px vertically may result in some distortion of the header (fixable with a custom style sheet).
* **Footer Logo URL**: The logo image to use in the footer. Same as above but height is about 40px before distortion occurs.
* **Background Color**: Sets the background color of the console.


Welcome Page
^^^^^^^^^^^^

The HTML/EJS to show on the Welcome page. The :ref:`settings variables
<customize-settings-vars>` and ``username`` variable (current user) are
available via EJS, but plain HTML will work for simple use cases.

Support Page
^^^^^^^^^^^^

The HTML/EJS to show on the Support page. The :ref:`settings variables
<customize-settings-vars>` and ``support_email`` variable (see Settings
> Controller) are available.

Eula Content
^^^^^^^^^^^^

The HTML/EJS to show in the EULA overlay. The :ref:`settings variables
<customize-settings-vars>` are available.

.. _customize-css:

Custom Stylesheet
^^^^^^^^^^^^^^^^^

CSS defined here will be applied to the page after the default CSS has
been loaded, and override/replace any style. Use this to change the
layout and color of any element in the Management Console. Use web
development tools like Firebug or Chrome DevTools to inspect elements
and find the relevant styles. 

.. _customize-settings-vars:

Settings Variables
^^^^^^^^^^^^^^^^^^

The following variables (with their default values) are available in the
EJS templates on the settings object (e.g. ``settings.product_name``):

* product_name: null,
* company_name: 'ActiveState Software',
* vendor_version: '3.0',
* default_locale: 'en',
* product_logo_favicon_url: 'img/stackato_logo_favicon.png',
* product_logo_header_url: 'img/stackato_logo_header.png',
* product_logo_footer_url: 'img/stackato_logo_footer.png',
* background_color: '#ffffff',
* style: '',
* support_template: SupportTemplate,
* eula_template: EulaTemplate,
* welcome_template: WelcomeTemplate,
* external_docs_url: 'http://docs.stackato.com/3.0/',
* use_local_docs: "false"

Restoring values
^^^^^^^^^^^^^^^^

Each setting has an individual **Load Default** button (refresh icon to
the left of the value field) which will replace the customized value
with the default for that setting. Click 'Save' to apply the changes.

The red **Load Defaults** button at the top of the page deletes all
customizations and loads defaults for all settings.

As a failsafe for when style changes have obscured the interface, admins
can also reset specific settings by loading a URL with the following
format::

    https://<stackato-url>/#settings/console/reset/setting_name

Replace ``setting_name`` with one of the variables above and that value
will be reset to the default.

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

.. _customize-rename-client:

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
* save the archives to the ``/s/static/`` directory **of each Router
  node** 
* change the filenames in **Console Settings -> Client**


.. _customize-oem:

OEM Customization
-----------------

The modifications shown above can be made on Stackato VM instances that
have already run through first-boot configuration.

OEM customers wishing to distribute a customized Stackato VM or make a
branded version available on their IaaS can do so by mounting the
original Stackato VM disk image on another system and creating the
following four files to override the Stackato defaults::

  /s/static/console_settings.json
  /s/static/console_support_template.ejs
  /s/static/console_eula_template.ejs
  /s/static/console_welcome_template.ejs

Values specified in these files become the new defaults. They are loaded
very early on in the Console start up, so they are applied even on the
first user set up page once the VM has been booted.

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
technique described in the :ref`Custom Stylesheet <customize_css>`
section. Since JSON cannot store multi-line strings, the ``"style"``
value must be a single line; use your favorite CSS minifier.

The three template files should contain HTML/EJS. Use the corresponding
Stackato default pages seen in **Console Settings** as a starting point
for creating this content.
