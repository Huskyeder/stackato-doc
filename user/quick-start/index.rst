.. _quick-start:

.. index:: Quick Start

Quick Start
===========

This guide covers the basics of using a Stackato PaaS. To follow along,
you will need:

* a user account 
* a copy of the ``stackato`` CLI client
* a web browser

If you want to run your own Stackato "micro cloud" system for local
development and testing, `download a copy of the Stackato VM
<http://www.activestate.com/stackato/download_vm>`_ and follow the setup
instructions in the Admin Guide.

.. _quickstart-management-console:

Management Console
------------------

The web interface for Stackato is called the :ref:`Management Console
<management-console>`. You can use it to:

* see your current usage and quota
* monitor and manage applications you have deployed
* see which runtimes, frameworks, and services are available
* deploy applications from the App Store 

To use it, open the API Endpoint URL (e.g. *https://api.stacka.to*) in
your favorite browser. Log in with the username and password that have
been set up for you on the system. 

The interface should be mostly self-explanatory. It exposes most of the
functionality you have access to as an end user, but to deploy your own
applications from source code on your local machine you will need to
use the ``stackato`` CLI client.

.. _quickstart-setup-client:

Stackato Client
---------------

The ``stackato`` client is used for pushing applications to
Stackato and interacting with the system from the command line.

.. include:: ../common/client-setup.inc

The :ref:`command-ref-client` has a full list of commands and options.

Target and Login 
^^^^^^^^^^^^^^^^

To connect the ``stackato`` client to the PaaS, use the ``target``
command to specify the API Endpoint URL. This is normally the hostname
prepended with "api." for example:

.. parsed-literal::

    $ stackato target *api.stacka.to*
    Target:       https://api.stacka.to
    Organization: <none>
    Space:        <none>
    Successfully targeted to [https://api.stacka.to]

Once you have successfully targeted Stackato, you must authenticate
using ``stackato login`` with the credentials that have been created for
you:

.. parsed-literal::

    $ stackato login *user@example.com*
    Attempting login to [https://api.stacka.to]
    Password: \*\*\*\*\*\*\*\*
    Successfully logged into [https://api.stacka.to]
    ...
    
.. _quickstart-org-space:

Setting Organization and Space
------------------------------

If you are logging in for the first time, your user account will not
automatically choose an :ref:`Organization and Space <orgs-spaces>` for
deployment.

To set the Organization you belong to::

  $ stackato switch-org *org-name*
  Switching to organization *org-name* ... OK
  Unsetting current space ... OK
  Target:       https://api.stacka.to
  Organization: *org-name*
  Space:        <none>

To set the Space you want to deploy applications to::

  $ stackato switch-space dev
  Switching to organization *org-name* ... OK
  Switching to space dev ... OK
  Target:       https://api.stacka.to
  Organization: test-org
  Space:        dev

.. note::

  If your account is not a member of a Space, you will need an
  Organization Manager to add you as a Developer. If you are an
  Organization manager (or Admin), you can create create new Spaces in
  the :ref:`Management Console <user-console-space>` or with the
  :ref:`stackato create-space <command-create-space>` command. 


.. _quickstart-deploying-apps:

Deploying Apps
--------------

The steps for deploying applications will vary slightly depending on the
language or framework used, but the basic command is:

.. parsed-literal::

  $ stackato push --as [*appname*]

By default, the client will take application code from your current
working directory and push it to Stackato for further staging and
configuration, prompting for additional configuration information as
necessary.


Sample Applications
^^^^^^^^^^^^^^^^^^^

Numerous sample applications are available from `Stackato-Apps
<https://github.com/Stackato-Apps>`_ on Github, each with a README.md
file showing how to deploy it on Stackato.

Many of these have a :ref:`stackato.yml <stackato_yml>` or
:ref:`manifest.yml <manifest_yml>` configuration files, so you can skip
the interactive prompts by using the ``-n`` option:

.. parsed-literal::

  $ stackato push -n [*appname*]

Test the Application
^^^^^^^^^^^^^^^^^^^^

The output of ``stackato push`` will show the URL of the running
application. Paste this URL into a web browser to try the application
or run:

.. parsed-literal::

	$ stackato open [*appname*]

Documentation on configuring applications in specific languages and
frameworks is available in the :ref:`Deploying Apps <deploying-apps>`
section.

