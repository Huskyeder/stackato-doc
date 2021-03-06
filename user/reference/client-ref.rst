.. index:: Command Reference: Client

.. _command-ref-client:

Stackato Client Command Reference
=================================

Usage
-----

**stackato** [*options*] *command* [*arguments*] [*command-options*]

Try ``stackato help``, ``stackato help [command]``, and ``stackato options`` for more information.

Many of the informational commands take a ``--json`` option if you wish to generate machine-parseable output.
In some cases the  ``--json`` option reveals additional details.

.. note::
    Administrative user privileges are required for some commands.

  
Getting Started
------------------------

    
.. _command-login:
  
  stackato login  *<email>* 
    Log in to the current or specified target with the named user.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --credentials
      
		The credentials to use.
		Each use of the option declares a single element,
		using the form "key: value" for the argument.
		This is a Stackato 3 specific option.
	    
    --group
      
		The group to use for the login.
		This is a Stackato 2 specific option.
	    
    --ignore-missing
      
		Disable errors generated for missing organization and/or space.
	    
    --organization
      
		The organization to use.
		This is a Stackato 3 specific option.
		If not specified the user is asked interactively
		to choose an organization.
	    
    --passwd
      Alias of --password.
    --password
      
		The password to use. 
		For Stackato 3 this is a shorthand
		for --credentials 'password: ...'.
	    
    --space
      
		The space (in the organization) to use.
		This is a Stackato 3 specific option.
		If not specified the user is asked interactively
		to choose among the possible spaces in
		either the chosen organization, or all
		organizations it belongs to.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-logout:
  
  stackato logout  *<target>* 
    Log out of the current, specified, or all targets.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		When present, log out of all targets we know.
		Cannot be used together with a target.
	    
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-target:
  
  stackato target  *<url>* 
    Set the target API endpoint for the client, or report the current target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --allow-http
      
	    Required to prevent the client from rejecting http urls.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The organization to set as current for this target.
	    This is a Stackato 3 specific option.
	
    --space
      
	    The space to set as current for this target.
	    This is a Stackato 3 specific option.
	
    --verbose
       More verbose operation. 
    -o
      Alias of --organization.
    -s
      Alias of --space.


  
Applications
------------------------

    
.. _command-apps:
  
  stackato apps 
    List the applications deployed to the target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Show all applications instead of just those
		associated with the current space.
	    
    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-app:
  
  stackato app  *<application>* 
    Show the information of the specified application.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --manifest
      
	    Path of the manifest file to use.
	    If not specified a search is done.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --path
      
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-list:
  
  stackato list 
    List the applications deployed to the target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Show all applications instead of just those
		associated with the current space.
	    
    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-releases:
  
  stackato releases  *<application>* 
    Show the list of versions for the specified application. This is a Stackato 3.4 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --manifest
      
	    Path of the manifest file to use.
	    If not specified a search is done.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --path
      
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-versions:
  
  stackato versions  *<application>* 
    Show the list of versions for the specified application. This is a Stackato 3.4 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --manifest
      
	    Path of the manifest file to use.
	    If not specified a search is done.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --path
      
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.


    
.. _command-Applications-Control:
    
Control
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-migrate:

      stackato migrate  *<application>*  *<destination>*       
        Move the application to a different space. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --dest-org
          Alias of --destination-organization.
        --destination-organization
          
		The organization of the destination space, if not the current org.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -D
          Alias of --destination-organization.
        -o
          Alias of --organization.


.. _command-restage:

      stackato restage  *<application>*       
        Restage an application, regenerate its droplet. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


    
.. _command-Applications-Information:
    
Information
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-crashes:

      stackato crashes  *<application>*       
        List recent application crashes.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-crashlogs:

      stackato crashlogs  *<application>*       
        Display log information for the application. An alias of 'logs'.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Retrieve the logs from all instances. Before 2.3 only.
	    
        --filename
          
		Filter the log stream by origin file (glob pattern).
		Target version 2.4+ only.
	    
        --follow
          
		Tail -f the log stream. Target version 2.4+ only.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		The id of the instance to filter the log stream for,
		or (before 2.3), to retrieve the logs of.
	    
        --json
          
		Print the raw json log stream, not human-formatted data.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --num
          
		Show the last num entries of the log stream.
		Target version 2.4+ only.
	    
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --prefix
          
		Put instance information before each line of a
		shown log file. Before Stackato 2.3 only.
	    
        --prefix-logs
          Alias of --prefix.
        --prefixlogs
          Alias of --prefix.
        --source
          
		Filter the log stream by origin stage (glob pattern).
		Target version 2.4+ only.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          Alias of --follow.
        --target
          
	    The once-off target to use for the current operation.
	
        --text
          
		Filter the log stream by log entry text (glob pattern).
		Target version 2.4+ only.
	    
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -f
          Alias of --follow.
        -o
          Alias of --organization.


.. _command-disk:

      stackato disk  *<application>*       
        Show the disk reservation for a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-drain list:

      stackato drain list  *<application>*       
        Show the list of drains attached to the application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-drains:

      stackato drains  *<application>*       
        Show the list of drains attached to the application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-env:

      stackato env  *<application>*       
        List the application's environment variables.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-events:

      stackato events  *<application>*       
        Show recorded application events, for application or space. Without an application given the current or specified space is used, otherwise that application. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-files:

      stackato files  *<application>*  *<apath>*       
        Display directory listing or file. Relative paths are interpreted relative to $STACKATO_APP_ROOT on the target. Without path it defaults to $STACKATO_APP_ROOT on the target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		When present, access all instances for the file or directory.
		Cannot be used together with --instance.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		When present the instance to query.
		Cannot be used together with --all.
		Defaults to 0 (except when --all is present).
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --prefix
          
		Put instance information before each line of a
		shown file or directory listing. Effective only
		for --all.
	    
        --prefix-logs
          Alias of --prefix.
        --prefixlogs
          Alias of --prefix.
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-file:

      stackato file  *<application>*  *<apath>*       
        Display directory listing or file. Relative paths are interpreted relative to $STACKATO_APP_ROOT on the target. Without path it defaults to $STACKATO_APP_ROOT on the target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		When present, access all instances for the file or directory.
		Cannot be used together with --instance.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		When present the instance to query.
		Cannot be used together with --all.
		Defaults to 0 (except when --all is present).
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --prefix
          
		Put instance information before each line of a
		shown file or directory listing. Effective only
		for --all.
	    
        --prefix-logs
          Alias of --prefix.
        --prefixlogs
          Alias of --prefix.
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-health:

      stackato health  *<application>*       
        Report the health of the specified application(s).

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Report on all applications in the current space.
		Cannot be used together with application names.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-instances:

      stackato instances  *<application>*       
        List application instances for a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-logs:

      stackato logs  *<application>*       
        Display the application log stream.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Retrieve the logs from all instances. Before 2.3 only.
	    
        --filename
          
		Filter the log stream by origin file (glob pattern).
		Target version 2.4+ only.
	    
        --follow
          
		Tail -f the log stream. Target version 2.4+ only.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		The id of the instance to filter the log stream for,
		or (before 2.3), to retrieve the logs of.
	    
        --json
          
		Print the raw json log stream, not human-formatted data.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --num
          
		Show the last num entries of the log stream.
		Target version 2.4+ only.
	    
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --prefix
          
		Put instance information before each line of a
		shown log file. Before Stackato 2.3 only.
	    
        --prefix-logs
          Alias of --prefix.
        --prefixlogs
          Alias of --prefix.
        --source
          
		Filter the log stream by origin stage (glob pattern).
		Target version 2.4+ only.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          Alias of --follow.
        --target
          
	    The once-off target to use for the current operation.
	
        --text
          
		Filter the log stream by log entry text (glob pattern).
		Target version 2.4+ only.
	    
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -f
          Alias of --follow.
        -o
          Alias of --organization.


.. _command-mem:

      stackato mem  *<application>*       
        Show the memory reservation for a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-stats:

      stackato stats  *<application>*       
        Display the resource usage for a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-tail:

      stackato tail  *<application>*  *<apath>*       
        Monitor file for changes and stream them.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		When present the instance to query.
		Cannot be used together with --all.
		Defaults to 0 (except when --all is present).
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


    
.. _command-Applications-Management:
    
Management
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-create-app:

      stackato create-app  *<application>*       
        Create an empty application with the specified configuration.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --autoscale
          
		Autoscaling support.
		Declare (non)usage of auto-scaling.
		Defaults to off.
		This is a Stackato 3.2 specific option.
	    
        --buildpack
          
		Url of a custom buildpack.
		This is a Stackato 3 specific option.
	    
        --command
          
		The application's start command.
		Defaults to a framework-specific value if required
		and not specified by stackato.yml.
	    
        --description
          
		The description associated with the application.
		This is a Stackato 3.2 specific option.
	    
        --disk
          
		The application's per-instance disk allocation.
		Defaults to a framework-specific value if not
		specified by stackato.yml.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --domain
          
		The default domain to use for the url of the application.
		This information is only used if no urls are specified by
		neither command line nor manifest.
	    
        --env
          
		Environment variable overrides. These are always applied
		regardless of --env-mode. The mode is restricted to the
		variable declarations found in the manifest.
	    
        --env-mode
          
		Environment replacement mode. One of preserve, or replace.
		The default is "preserve". Using mode "replace" implies
		--reset as well, for push. Note that new variables are always
		set. Preserve only prevents update of existing variables.
		This setting applies only to the variable declarations found
		in the manifest.  Overrides made with --env are always applied.
	    
        --framework
          
		Specify the framework to use.
		Cannot be used together with --no-framework.
		Defaults to a heuristically chosen value if
		not specified, and none for --no-framework.
		This is a Stackato 2 specific option.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --health-timeout
          
	    The time the health manager waits for an application to start
	    before sending problem reports. The default is target-specific.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --instances
          
		The number of application instances to create.
		Defaults to 1, if not specified by a stackato.yml.
	    
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --max-cpu
          
		Auto-scale support.
		Scale up when the average CPU usage exceeds this threshold
		for the previous minute and --max-instances has not been
		reached yet.
		This is a Stackato 3.2 specific option.
	    
        --max-instances
          
		Auto-scale support.
		The maximal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --mem
          
		The application's per-instance memory allocation.
		Defaults to a framework-specific value if not
		specified by stackato.yml.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --min-cpu
          
		Auto-scale support.
		Scale down when the average CPU usage dropped below this
		threshold for the previous minute and --min-instances has
		not been reached yet.
		This is a Stackato 3.2 specific option.
	    
        --min-instances
          
		Auto-scale support.
		The minimal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --no-autoscale
          Complementary alias of --autoscale.
        --no-framework
          
		Create application without any framework.
		Cannot be used together with --framework.
		This is a Stackato 2 specific option.
	    
        --no-sso-enabled
          Complementary alias of --sso-enabled.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --placement-zone
          
		The placement zone associated with the application.
		This is a Stackato 3.2 specific option.
	    
        --reset
          
		Analogue of --env-mode, for the regular settings.
	    
        --runtime
          
		The name of the runtime to use.
		Default is framework specific, if not specified
		by a stackato.yml.
		This is a Stackato 2 specific option.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --sso-enabled
          
		A boolean flag associated with the application
		determining whether it requests single-sign-on or not.
		This is a Stackato 3.2 specific option.
	    
        --stack
          
		The OS foundation the application will run on.
		This is a Stackato 3 specific option.
	    
        --stackato-debug
          
		host:port of the Komodo debugger listener to inject
		into the application as environment variables.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		The urls to map the application to.
		I.e. can be specified muliple times.
	    
        --zone
          Alias of --placement-zone.
        -d
          
		Set up debugging through an application-specific
		harbor (port) service. Target version 2.8+ only.
	    
        -o
          Alias of --organization.


.. _command-dbshell:

      stackato dbshell  *<application>*  *<service>*       
        Invoke interactive db shell for a bound service.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --dry
          
	    Print the low-level ssh command to stdout
	    instead of executing it.
	
        --dry-run
          Alias of --dry.
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-delete:

      stackato delete  *<application>*       
        Delete the specified application(s).

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Delete all applications (in the current/specified space).
		Cannot be used together with application names.
	    
        --force
          
		Force deletion.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-routes
          Complementary alias of --routes.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --routes
          
		Delete exclusive routes with the application.
		Done by default.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-drain add:

      stackato drain add  *<application>*  *<drain>*  *<uri>*       
        Attach a new named drain to the application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
		    The drain target takes raw json log entries.
		
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-drain delete:

      stackato drain delete  *<application>*  *<drain>*       
        Remove the named drain from the application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-env-add:

      stackato env-add  *<application>*  *<varname>*  *<value>*       
        Add the specified environment variable to the named application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-env-del:

      stackato env-del  *<application>*  *<varname>*       
        Remove the specified environment variable from the named application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-map:

      stackato map  *<application>*  *<url>*       
        Make the application accessible through the specified URL (a route consisting of host and domain)

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-open:

      stackato open  *<application>*       
        Open the url of the specified application in the default web browser. If 'api' is specified as the app name, the Management Console is opened. With no arguments, the 'name' value from the stackato.yml/manifest.yml in the current directory is used (if present).

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-push:

      stackato push  *<application>*       
        Configure, create, push, map, and start a new application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --as
          
		The name of the application to push/update the selected application as.
		Possible only if a single application is pushed or updated.
	    
        --autoscale
          
		Autoscaling support.
		Declare (non)usage of auto-scaling.
		Defaults to off.
		This is a Stackato 3.2 specific option.
	    
        --buildpack
          
		Url of a custom buildpack.
		This is a Stackato 3 specific option.
	    
        --command
          
		The application's start command.
		Defaults to a framework-specific value if required
		and not specified by stackato.yml.
	    
        --copy-unsafe-links
          
		Links pointing outside of the application directory
		are copied into the application.
	    
        --description
          
		The description associated with the application.
		This is a Stackato 3.2 specific option.
	    
        --disk
          
		The application's per-instance disk allocation.
		Defaults to a framework-specific value if not
		specified by stackato.yml.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --domain
          
		The default domain to use for the url of the application.
		This information is only used if no urls are specified by
		neither command line nor manifest.
	    
        --env
          
		Environment variable overrides. These are always applied
		regardless of --env-mode. The mode is restricted to the
		variable declarations found in the manifest.
	    
        --env-mode
          
		Environment replacement mode. One of preserve, or replace.
		The default is "preserve". Using mode "replace" implies
		--reset as well, for push. Note that new variables are always
		set. Preserve only prevents update of existing variables.
		This setting applies only to the variable declarations found
		in the manifest.  Overrides made with --env are always applied.
	    
        --force-start
          
		Push, and start the application, even when stopped.
	    
        --force-war-unpacking
          
		When true, unpack .war and .jar files and upload contents as
		application root. Defaults to true for Stackato 2.x targets.
		Defaults to false for Stackato 3.x targets. 
	    
        --framework
          
		Specify the framework to use.
		Cannot be used together with --no-framework.
		Defaults to a heuristically chosen value if
		not specified, and none for --no-framework.
		This is a Stackato 2 specific option.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --health-timeout
          
	    The time the health manager waits for an application to start
	    before sending problem reports. The default is target-specific.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --instances
          
		The number of application instances to create.
		Defaults to 1, if not specified by a stackato.yml.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --max-cpu
          
		Auto-scale support.
		Scale up when the average CPU usage exceeds this threshold
		for the previous minute and --max-instances has not been
		reached yet.
		This is a Stackato 3.2 specific option.
	    
        --max-instances
          
		Auto-scale support.
		The maximal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --mem
          
		The application's per-instance memory allocation.
		Defaults to a framework-specific value if not
		specified by stackato.yml.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --min-cpu
          
		Auto-scale support.
		Scale down when the average CPU usage dropped below this
		threshold for the previous minute and --min-instances has
		not been reached yet.
		This is a Stackato 3.2 specific option.
	    
        --min-instances
          
		Auto-scale support.
		The minimal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --no-autoscale
          Complementary alias of --autoscale.
        --no-force-war-unpacking
          Complementary alias of --force-war-unpacking.
        --no-framework
          
		Create application without any framework.
		Cannot be used together with --framework.
		This is a Stackato 2 specific option.
	    
        --no-resources
          
		Do not optimize upload by checking for existing file resources.
	    
        --no-sso-enabled
          Complementary alias of --sso-enabled.
        --no-start
          
		Push, but do not start the application.
	    
        --no-tail
          Complementary alias of --tail.
        --noresources
          Alias of --no-resources.
        --nostart
          Alias of --no-start.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --placement-zone
          
		The placement zone associated with the application.
		This is a Stackato 3.2 specific option.
	    
        --reset
          
		Analogue of --env-mode, for the regular settings.
	    
        --runtime
          
		The name of the runtime to use.
		Default is framework specific, if not specified
		by a stackato.yml.
		This is a Stackato 2 specific option.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --sso-enabled
          
		A boolean flag associated with the application
		determining whether it requests single-sign-on or not.
		This is a Stackato 3.2 specific option.
	    
        --stack
          
		The OS foundation the application will run on.
		This is a Stackato 3 specific option.
	    
        --stackato-debug
          
		host:port of the Komodo debugger listener to inject
		into the application as environment variables.
	    
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		The urls to map the application to.
		I.e. can be specified muliple times.
	    
        --zone
          Alias of --placement-zone.
        -d
          
		Set up debugging through an application-specific
		harbor (port) service. Target version 2.8+ only.
	    
        -o
          Alias of --organization.


.. _command-rename:

      stackato rename  *<application>*  *<name>*       
        Rename the specified application. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-restart:

      stackato restart  *<application>*       
        Stop and restart a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-rollback:

      stackato rollback  *<application>*  *<appversion>*       
        Switch to a different version of the application. This is a Stackato 3.4 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --code-only
          
		When specified the rollback reactivates only the old
		droplet of the specified version while retaining the
		current configuration.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-run:

      stackato run  *<command>*       
        Run an arbitrary command on a running instance.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Run the command on all instances.
		Cannot be used together with --instance.
	    
        --application
          
		Name of the application to operate on.
	    
        --banner
          
		Show the leading and trailing banner to separate
		instance data. Applies only when --all is used.
		Defaults to on.
	    
        --dry
          
	    Print the low-level ssh command to stdout
	    instead of executing it.
	
        --dry-run
          Alias of --dry.
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		The instance to access with the command.
		Defaults to 0.
		Cannot be used together with --all.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-banner
          Complementary alias of --banner.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -a
          Alias of --application.
        -o
          Alias of --organization.


.. _command-scale:

      stackato scale  *<application>*       
        Update the number of instances, memory, disk reservation and/or autoscaling settings for a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --autoscale
          
		Autoscaling support.
		Declare (non)usage of auto-scaling. The default is determined
		from the (use of the) other autoscaling options and --instances.
		This is a Stackato 3.2 specific option.
	    
        --disk
          
		The new disk reservation to use.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instances
          
		Absolute number of instances to scale to, or
		relative change.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --max-cpu
          
		Auto-scale support.
		Scale up when the average CPU usage exceeds this threshold
		for the previous minute and --max-instances has not been
		reached yet.
		This is a Stackato 3.2 specific option.
	    
        --max-instances
          
		Auto-scale support.
		The maximal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --mem
          
		The new memory reservation to use.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --min-cpu
          
		Auto-scale support.
		Scale down when the average CPU usage dropped below this
		threshold for the previous minute and --min-instances has
		not been reached yet.
		This is a Stackato 3.2 specific option.
	    
        --min-instances
          
		Auto-scale support.
		The minimal number of instances for the application.
		This is a Stackato 3.2 specific option.
	    
        --no-autoscale
          Complementary alias of --autoscale.
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -d
          Alias of --disk.
        -i
          Alias of --instances.
        -m
          Alias of --mem.
        -o
          Alias of --organization.


.. _command-scp:

      stackato scp  *<paths>*       
        Copy files and directories to and from application containers. The colon ":" character preceding a specified source or destination indicates a remote file or path. Sources and destinations can be file names, directory names, or full paths.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --application
          
		Name of the application to operate on.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		The instance to access with the command.
		Defaults to 0.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -a
          Alias of --application.
        -o
          Alias of --organization.


.. _command-set-env:

      stackato set-env  *<application>*  *<varname>*  *<value>*       
        Add the specified environment variable to the named application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-ssh:

      stackato ssh  *<command>*       
        SSH to a running instance (or target), or run an arbitrary command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Run the command on all instances.
		Cannot be used together with --instance.
	    
        --application
          
		Name of the application to operate on, or
		"api" to talk to the cloud controller node.
	    
        --banner
          
		Show the leading and trailing banner to separate
		instance data. Applies only when --all is used.
		Defaults to on.
	    
        --dry
          
	    Print the low-level ssh command to stdout
	    instead of executing it.
	
        --dry-run
          Alias of --dry.
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --instance
          
		The instance to access with the command.
		Defaults to 0.
		Cannot be used together with --all.
	    
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-banner
          Complementary alias of --banner.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -a
          Alias of --application.
        -o
          Alias of --organization.


.. _command-start:

      stackato start  *<application>*       
        Start a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-stop:

      stackato stop  *<application>*       
        Stop a deployed application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-switch-version:

      stackato switch-version  *<application>*  *<appversion>*       
        Switch to a different version of the application. This is a Stackato 3.4 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --code-only
          
		When specified the rollback reactivates only the old
		droplet of the specified version while retaining the
		current configuration.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-unmap:

      stackato unmap  *<application>*  *<url>*       
        Unregister the application from a URL.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-unset-env:

      stackato unset-env  *<application>*  *<varname>*       
        Remove the specified environment variable from the named application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


    
.. _command-Applications-Placement:
    
Placement
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-placement-zones:

      stackato placement-zones       
        Show the available placement zones. This is a Stackato 3.2+ specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-placement-zone:

      stackato placement-zone  *<zone>*       
        Show the list of DEAs associated with the specified placement zone. This is a Stackato 3.2+ specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-set-placement-zone:

      stackato set-placement-zone  *<application>*  *<zone>*       
        Associate the application with a specific placement zone. This is a Stackato 3.2+ specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-unset-placement-zone:

      stackato unset-placement-zone  *<application>*       
        Remove the association between application and its current placement zone. This is a Stackato 3.2+ specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


  
Feature Flags
------------------------

    
.. _command-disable-feature-flag:
  
  stackato disable-feature-flag  *<name>* 
    Deactivate the specified feature. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-enable-feature-flag:
  
  stackato enable-feature-flag  *<name>* 
    Activate the specified feature. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-feature-flags:
  
  stackato feature-flags 
    Show all known feature flags and their stati. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-feature-flag:
  
  stackato feature-flag  *<name>* 
    Show the details of the specified feature flag. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


  
Services
------------------------

    
.. _command-marketplace:
  
  stackato marketplace 
    List the supported service plans of the target, for the current or specified space. This is a Stackato 3.4+ specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-purge-service-offerings:
  
  stackato purge-service-offerings  *<service>* 
    Purge all offerings of the service type from the system. Danger. Do this only for services we know to have their brokers killed, leaving behind orphans. This is a Stackato 3.4+ specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --provider
      
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    --version
      
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
	    
    
.. _command-services:
  
  stackato services 
    List the supported and provisioned services of the target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-service:
  
  stackato service  *<name>* 
    Show the information about the named service.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.


    
.. _command-Services-Authentication Tokens:
    
Authentication Tokens
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-create-service-auth-token:

      stackato create-service-auth-token  *<label>*  *<provider>*       
        Create a new service authentication token. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --auth-token
          
		    Value of the new token.
		
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-delete-service-auth-token:

      stackato delete-service-auth-token  *<label>*       
        Delete the specified service authentication token. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-service-auth-tokens:

      stackato service-auth-tokens       
        Show all service authentication tokens knowns to the target. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-update-service-auth-token:

      stackato update-service-auth-token  *<label>*       
        Update the specified service authentication token. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --auth-token
          
		    New value of the specified token.
		
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


    
.. _command-Services-Brokers:
    
Brokers
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-add-service-broker:

      stackato add-service-broker  *<name>*       
        Make the named service broker known. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --broker-token
          
		    Value of the broker's token.
		    Note: This option is specific to Stackato 3.0.
		
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --password
          
		    The password to use for access to the broker.
		
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		    Location of the broker.
		
        --username
          
		    Name of the user to use for access to the broker.
		
        -o
          Alias of --organization.


.. _command-create-service-broker:

      stackato create-service-broker  *<name>*       
        Make the named service broker known. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --broker-token
          
		    Value of the broker's token.
		    Note: This option is specific to Stackato 3.0.
		
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --password
          
		    The password to use for access to the broker.
		
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		    Location of the broker.
		
        --username
          
		    Name of the user to use for access to the broker.
		
        -o
          Alias of --organization.


.. _command-delete-service-broker:

      stackato delete-service-broker  *<name>*       
        Remove the named service broker from the target. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-remove-service-broker:

      stackato remove-service-broker  *<name>*       
        Remove the named service broker from the target. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-service-brokers:

      stackato service-brokers       
        Show the list of known service brokers. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-update-service-broker:

      stackato update-service-broker  *<name>*  *<newname>*       
        Update the target's knowledge of the named service broker. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --broker-token
          
		    Value of the broker's token.
		    Note: This option is specific to Stackato 3.0.
		
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --password
          
		    The password to use for access to the broker.
		
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		    New location of the broker.
		
        --username
          
		    Name of the user to use for access to the broker.
		
        -o
          Alias of --organization.


    
.. _command-Services-Management:
    
Management
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-bind-service:

      stackato bind-service  *<service>*  *<application>*       
        Bind the named service to the specified application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-clone-services:

      stackato clone-services  *<source>*  *<application>*       
        Copy the service bindings of the source application to the destination application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-create-service:

      stackato create-service  *<vendor>*  *<name>*  *<application>*       
        Create a new provisioned service, and optionally bind it to an application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --credentials
          
		The credentials to use.
		Each use of the option declares a single element,
		using the form "key: value" for the argument.
		This is a Stackato 3 specific option.
		This is restricted to user-provided services.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --plan
          
		The service plan to use.
		This is a Stackato 3 specific option.
	    
        --provider
          
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
		This is a Stackato 3 specific option.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --version
          
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
		This is a Stackato 3 specific option.
	    
        -o
          Alias of --organization.


.. _command-delete-service:

      stackato delete-service  *<service>*       
        Delete the named provisioned service.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		Delete all services.
		Cannot be used together with named service instances.
	    
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --unbind
          
		Unbind service from applications before deleting.
		By default bound services are skipped and not deleted.
		This is a Stackato 3 specific option.
	    
        -o
          Alias of --organization.


.. _command-rename-service:

      stackato rename-service  *<service>*  *<name>*       
        Rename the specified service instance. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-tunnel:

      stackato tunnel  *<service>*  *<tunnelclient>*       
        Create a local tunnel to a service, optionally start a local client as well.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --allow-http
          
	    Required to prevent the client from rejecting http urls.
	
        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --port
          
		Port used for the tunnel.
	    
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --url
          
		Url the tunnel helper application is mapped to and
		listens on. Relevant if and only if the helper has
		to be pushed,i.e. on first use of the tunnel command.
	    
        -o
          Alias of --organization.


.. _command-unbind-service:

      stackato unbind-service  *<service>*  *<application>*       
        Disconnect the named service from the specified application.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --group
          
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
        --manifest
          
	    Path of the manifest file to use.
	    If not specified a search is done.
	
        --no-tail
          Complementary alias of --tail.
        --organization
          
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
        --path
          
	    Path of the directory or file holding the application files to push.
	    Defaults to the current working directory.
	
        --space
          
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
        --space-guid
          
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-update-user-provided-service:

      stackato update-user-provided-service  *<service>*       
        Update the credentials of a user provided service. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --credentials
          
		The new credentials to use.
		Their entirety replaces the old credentials.
		Each use of the option declares a single element,
		using the form "key: value" for the argument.
	    
        --no-tail
          Complementary alias of --tail.
        --tail
          
	    Request target to stream the log.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --timeout
          
	    The time the client waits for an application to
	    start before giving up and returning, in seconds.
	    Note that this is measured from the last entry
	    seen in the log stream. While there is activity
	    in the log the timeout is reset.

	    The default is 2 minutes.

	    Use the suffixes 'm', 'h', and 'd' for the convenient
	    specification of minutes, hours, and days. The optional
	    suffix 's' stands for seconds.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


    
.. _command-Services-Plans:
    
Plans
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-hide-service-plan:

      stackato hide-service-plan  *<name>*  *<organization>*       
        Hide the specified service-plan from the named organization. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --provider
          
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --vendor
          
		    Name of the service type the specified plan belongs to.
		
        --version
          
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
	    


.. _command-service-plans:

      stackato service-plans       
        List all available plans of the supported services. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-service-plan:

      stackato service-plan  *<name>*       
        Show the details of the specified service plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --provider
          
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --vendor
          
		    Name of the service type the specified plan belongs to.
		
        --version
          
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
	    


.. _command-show-service-plan:

      stackato show-service-plan  *<name>*  *<organization>*       
        Make the specified service-plan visible to the named organization. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --provider
          
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --vendor
          
		    Name of the service type the specified plan belongs to.
		
        --version
          
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
	    


.. _command-update-service-plan:

      stackato update-service-plan  *<name>*  *<newname>*       
        Update the target's knowledge of the named service plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --description
          
		    Change the plan's description.
		
        --free
          
		    Mark the plan as free.
		
        --no-free
          Complementary alias of --free.
        --no-public
          Complementary alias of --public.
        --provider
          
		The service provider. Use this to disambiguate
		between multiple providers of the same vendor/type.
	    
        --public
          
		    Mark the plan as globally public.
		
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --vendor
          
		    Name of the service type the specified plan belongs to.
		
        --version
          
		The service version. Use this to disambiguate
		between multiple versions of the same vendor/type.
	    


  
Introspection
------------------------



    
.. _command-Introspection-Command history:
    
Command history
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-history clear:

      stackato history clear       
        Clear the saved history.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-history limit:

      stackato history limit  *<n>*       
        Limit the size of the history. If no limit is specified the current limit is shown.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-history list:

      stackato history list  *<n>*       
        Show the saved history of commands.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



  
Organizations
------------------------

    
.. _command-create-org:
  
  stackato create-org  *<name>* 
    Create a new organization. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --activate
      
		Switch the current organization to the newly created one.
		Done by default.
	    
    --add-self
      
		Add yourself to the new organization, as developer.
		Done by default.
	    
    --default
      
		Make the organization the default for users without explicit organization.
		The previous default organization is automatically reset.
	    
    --no-activate
      Complementary alias of --activate.
    --no-add-self
      Complementary alias of --add-self.
    --quota
      
		The named quota of the new organization.
		Default is the target's choice.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-delete-org:
  
  stackato delete-org  *<name>* 
    Delete the named organization. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --recursive
      
	    Remove all sub-ordinate parts, and relations.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -r
      Alias of --recursive.
    
.. _command-link-user-org:
  
  stackato link-user-org  *<user>*  *<org>* 
    Add the specified user to the named organization, in various roles. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --auditor
       Affect the auditor role 
    --billing
       Affect the billing manager role 
    --manager
       Affect the manager role 
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-org-users:
  
  stackato org-users  *<org>* 
    Show the users for the organization, by role.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-orgs:
  
  stackato orgs 
    List the available organizations. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --full
      
		Show more details.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-org:
  
  stackato org  *<name>* 
    Show the named organization's information. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --full
      
		Show more details.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-quota-org:
  
  stackato quota-org  *<name>*  *<quota>* 
    Set the quotas for the current or named organization. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-rename-org:
  
  stackato rename-org  *<name>*  *<newname>* 
    Rename the named organization. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-switch-org:
  
  stackato switch-org  *<name>* 
    Switch the current organization to the named organization. This invalidates the current space. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-unlink-user-org:
  
  stackato unlink-user-org  *<user>*  *<org>* 
    Remove the specified user from the named organization, in various roles. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --auditor
       Affect the auditor role 
    --billing
       Affect the billing manager role 
    --manager
       Affect the manager role 
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-update-org:
  
  stackato update-org  *<name>* 
    Change one or more attributes of an organization in a single call.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --default
      
		Make the organization the default for users without explicit organization.
		The previous default organization is automatically reset.
	    
    --newname
      
		A new name to give to the organization.
	    
    --no-default
      Complementary alias of --default.
    --quota
      
		Name of the quota plan to use in the organization.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


  
Security Groups
------------------------

    
.. _command-bind-security-group:
  
  stackato bind-security-group  *<security_group>* 
    Bind the named security group to either the current or specified space, or the running and staging phases. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --running
      
		Switch operation to work on the security groups for running applications.
	    
    --space
      
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
    --staging
      
		Switch operation to work on the security groups for staging applications.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-create-security-group:
  
  stackato create-security-group  *<security_group>*  *<rules>* 
    Create a new security group. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-delete-security-group:
  
  stackato delete-security-group  *<security_group>* 
    Delete the named security group. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-security-groups:
  
  stackato security-groups 
    Show the known security groups, either all, or just those assigned to the running and staging phases. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --running
      
		Switch operation to work on the security groups for running applications.
	    
    --staging
      
		Switch operation to work on the security groups for staging applications.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-security-group:
  
  stackato security-group  *<security_group>* 
    Show the details of the named security group. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-unbind-security-group:
  
  stackato unbind-security-group  *<security_group>* 
    Drop the named security group from either the current or specified space, or the running and staging phases. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --running
      
		Switch operation to work on the security groups for running applications.
	    
    --space
      
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
    --staging
      
		Switch operation to work on the security groups for staging applications.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-update-security-group:
  
  stackato update-security-group  *<security_group>*  *<rules>* 
    Modify the named security group. I.e. replace the set of rules with a new set. This is a Stackato 3.4.2 command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


  
Spaces
------------------------

    
.. _command-create-space:
  
  stackato create-space  *<name>* 
    Create a new space. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --activate
      
		Switch the current space to the newly created one.
		Done by default.
	    
    --auditor
      
		Add yourself to the new space, as auditor.
		By request.
	    
    --default
      
		Make the space the default for users without explicit space.
		The previous default space is automatically reset.
		The spaces' organization is implicitly made the default as well.
	    
    --developer
      
		Add yourself to the new space, as developer.
		Done by default.
	    
    --manager
      
		Add yourself to the new space, as manager.
		Done by default.
	    
    --no-activate
      Complementary alias of --activate.
    --no-auditor
      Complementary alias of --auditor.
    --no-developer
      Complementary alias of --developer.
    --no-manager
      Complementary alias of --manager.
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-delete-space:
  
  stackato delete-space  *<name>* 
    Delete the named space. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --recursive
      
	    Remove all sub-ordinate parts, and relations.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    -r
      Alias of --recursive.
    
.. _command-link-user-space:
  
  stackato link-user-space  *<user>*  *<space>* 
    Add the specified user to the named space, in various roles. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --auditor
       Affect the auditor role 
    --developer
       Affect the developer role 
    --manager
       Affect the manager role 
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-rename-space:
  
  stackato rename-space  *<name>*  *<newname>* 
    Rename the named space. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-space-users:
  
  stackato space-users  *<space>* 
    Show the users for the space, by role.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-spaces:
  
  stackato spaces 
    List the available spaces in the specified organization. See --organization for details This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Show all spaces across all organizations.
	    
    --full
      
		Show more details.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
		The name of the organization to use as context.

		Defaults to the current organization.

		A current organization is automatically set if there is none,
		either by taking the one organization the user has, or
		asking the user to choose among the possibilities.

		Cannot be used together with --all.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-space:
  
  stackato space  *<name>* 
    Show the named space's information. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --full
      
		Show more details.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-switch-space:
  
  stackato switch-space  *<name>* 
    Switch from the current space to the named space. This may switch the organization as well. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-unlink-user-space:
  
  stackato unlink-user-space  *<user>*  *<space>* 
    Remove the specified user from the named space, in various roles. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --auditor
       Affect the auditor role 
    --developer
       Affect the developer role 
    --manager
       Affect the manager role 
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-update-space:
  
  stackato update-space  *<name>* 
    Change one or more attributes of a space in a single call.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --default
      
		Make the space the default for users without explicit space.
		The previous default space is automatically reset.
		The spaces' organization is implicitly made the default as well.
	    
    --newname
      
		A new name to give to the space.
	    
    --no-default
      Complementary alias of --default.
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.


  
Routes
------------------------

    
.. _command-delete-route:
  
  stackato delete-route  *<name>* 
    Delete the named route. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Operate --unused across all domains.
		Cannot be used together with named routes.
	    
    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --space
      
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    --unused
      
		Delete all routes which are not used by any application.
		Cannot be used together with named routes.
	    
    -o
      Alias of --organization.
    
.. _command-routes:
  
  stackato routes 
    List all available routes in the specified space, or all. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Query information about all domains.
		Cannot be used together with a space.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
		The name of the organization to use as context.
		Defaults to the current organization.

		A current organization is automatically set if there is none,
		either by taking the one organization the user has, or
		asking the user to choose among the possibilities.

		Cannot be used together with --all.
	    
    --space
      
		The name of the space to use as context.
		Defaults to the current space.

		A current space is automatically set if there is none,
		either by taking the one space the user has, or
		asking the user to choose among the possibilities.

		Cannot be used together with --all.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    --unused
      
		Filter output to show only the routes which are not used by any application.
	    
    -o
      Alias of --organization.


  
Domains
------------------------

    
.. _command-create-domain:
  
  stackato create-domain  *<name>* 
    Create a new domain. This is a Stackato 3.2+ specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --shared
      
		Mark the new domain as shared by all organizations.
		If not present the new domain will be owned by and
		private to the current or specified organization.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-delete-domain:
  
  stackato delete-domain  *<name>* 
    Delete the named domain. This is a Stackato 3.2+ specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-domains:
  
  stackato domains 
    List the available domains in the specified space, or all. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Query information about all domains.
		Cannot be used together with a space.
	    
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
		The name of the organization to use as context.
		Defaults to the current organization.
		Note: This is specific to Stackato 3.2 and higher.

		A current organization is automatically set if there is none,
		either by taking the one organization the user has, or
		asking the user to choose among the possibilities.

		Cannot be used together with --all.
	    
    --space
      
		The name of the space to use as context.
		Defaults to the current space.
		Note: This is specific to Stackato 3.0

		A current space is automatically set if there is none,
		either by taking the one space the user has, or
		asking the user to choose among the possibilities.

		Cannot be used together with --all.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-map-domain:
  
  stackato map-domain  *<name>* 
    Add the named domain to an organization or space. This is a Stackato 3 specific command. This command is not supported by Stackato 3.2 or higher.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --space
      
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-unmap-domain:
  
  stackato unmap-domain  *<name>* 
    Remove the named domain from an organization or space. This is a Stackato 3 specific command. This command is not supported by Stackato 3.2 or higher.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --organization
      
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
    --space
      
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.


  
Administration
------------------------

    
.. _command-admin grant:
  
  stackato admin grant  *<email>* 
    Grant the named user administrator privileges for the current or specified target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-admin list:
  
  stackato admin list 
    Show a list of the administrators for the current or specified target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-admin report:
  
  stackato admin report  *<destination>* 
    Retrieve a report containing the logs of the current or specified target. This is a stackato-specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-admin revoke:
  
  stackato admin revoke  *<email>* 
    Revoke administrator privileges for the named user at the current or specified target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-frameworks:
  
  stackato frameworks 
    List the supported frameworks of the target. This is a Stackato 2 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-info:
  
  stackato info 
    Show the basic system and account information.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-runtimes:
  
  stackato runtimes 
    List the supported runtimes of the target. This is a Stackato 2 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-show-token:
  
  stackato show-token 
    Print the current target's token.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-stacks:
  
  stackato stacks 
    List the supported stacks of the target. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-targets:
  
  stackato targets 
    List the available targets, and their authorization tokens, if any.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-tokens:
  
  stackato tokens 
    List the available targets, and their authorization tokens, if any.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-usage:
  
  stackato usage  *<userOrGroup>* 
    Show the current memory allocation and usage of the active or specified user/group (Stackato 2), or the specified or current space (Stackato 3).

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --all
      
		Query information about everything.
		Cannot be used together with userOrGroup.
	    
    --group
      
	    The once-off group to use for the current operation.
	    This is a Stackato 2 option.
	
    --json
      
	    Print raw json as output, not human-formatted data.
	
    --organization
      
	    The once-off organization to use for the current operation.
	    This is a Stackato 3 option.
	
    --space
      
	    The once-off space to use for the current operation, specified
	    by name. This is a Stackato 3 option.
	    Cannot be used together with --space-guid.
	
    --space-guid
      
	    The once-off space to use for the current operation, specified
	    by guid. This is a Stackato 3 option.
	    Cannot be used together with --space.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    -o
      Alias of --organization.
    
.. _command-user-info:
  
  stackato user-info  *<name>* 
    Shows the information of a user in the current or specified target. Defaults to the current user. Naming a specific user requires a Stackato 3 target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-user:
  
  stackato user 
    Show the name of the current user in the current or specified target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    
.. _command-version:
  
  stackato version 
    Print the version number of the client.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">



    
.. _command-Administration-Buildpacks:
    
Buildpacks
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-buildpacks:

      stackato buildpacks       
        Show all build-packs known to the target, in the order they are checked in during auto-detection.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-create-buildpack:

      stackato create-buildpack  *<name>*  *<zip>*       
        Add a build-pack to the target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --disable
          
		Disable the buildpack, prevent its use.
	    
        --enable
          
		Enable use of the buildback.
	    
        --lock
          
		Lock the buildpack against modification.
	    
        --position
          
		Location of the buildpack in the sequence used
		to check them during auto-detection.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --unlock
          
		Unlock the buildpack, allow changes again.
	    
        -P
          Alias of --position.


.. _command-delete-buildpack:

      stackato delete-buildpack  *<name>*       
        Remove the specified build-back from the target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-rename-buildpack:

      stackato rename-buildpack  *<name>*  *<newname>*       
        Change the name of the specified build-pack.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-update-buildpack:

      stackato update-buildpack  *<name>*       
        Change the information known about the specified build-pack.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --disable
          
		Disable the buildpack, prevent its use.
	    
        --enable
          
		Enable use of the buildback.
	    
        --lock
          
		Lock the buildpack against modification.
	    
        --position
          
		Location of the buildpack in the sequence used
		to check them during auto-detection.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --unlock
          
		Unlock the buildpack, allow changes again.
	    
        --zip
          
		Path or url of the new zip file containing the implementation of the buildpack.
		Accepts the path to a local directory as well, which will become the zip file to upload.
	    
        -P
          Alias of --position.


    
.. _command-Administration-Colors:
    
Colors
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-color list:

      stackato color list       
        Show the current color settings.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-color set:

      stackato color set  *<color>*  *<specification>*       
        (Re)define a color.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-color test:

      stackato color test  *<specification>*  *<string>*       
        Test a color specification.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-color unset:

      stackato color unset  *<color>*       
        Remove a color redefinition.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



.. _command-colors:

      stackato colors       
        Show the current color settings.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">



    
.. _command-Administration-Groups (Stackato 2):
    
Groups (Stackato 2)
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-groups add-user:

      stackato groups add-user  *<group>*  *<user>*       
        Add the named user to the specified group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups create:

      stackato groups create  *<name>*       
        Create a new group with the specified name. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups delete-user:

      stackato groups delete-user  *<group>*  *<user>*       
        Remove the named user from the specified group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups delete:

      stackato groups delete  *<name>*       
        Delete the named group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups limits:

      stackato groups limits  *<group>*       
        Show and/or modify the limits applying to applications in the named group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --apps
          
	    Limit for the number of applications in the group.
	
        --appuris
          
	    Limit for the number of mapped uris per application.
	
        --drains
          
	    Limit for the number of drains in the group.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --mem
          
	    Amount of memory applications can use.

	    Use the suffices 'M' and 'G' for the convenient specification
	    of mega- and gigabytes. Without a unit-suffix mega-bytes are
	    assumed. As the base-unit megabytes must specified as integers.
	    Gigabytes can be specified as fractions.
	
        --no-sudo
          Complementary alias of --sudo.
        --services
          
	    Limit for the number of services in the group.
	
        --sudo
          
	    Applications can use sudo (or not).
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups show:

      stackato groups show       
        Show the list of groups known to the target. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-groups users:

      stackato groups users  *<group>*       
        Show the list of users in the named group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-group:

      stackato group  *<name>*       
        Report the current group, or (un)set it. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --reset
          
	    Reset the current group to nothing.
	    Cannot be used together with name.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-limits:

      stackato limits  *<group>*       
        Show and/or modify the limits applying to applications in the named group. This is a Stackato 2 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --apps
          
	    Limit for the number of applications in the group.
	
        --appuris
          
	    Limit for the number of mapped uris per application.
	
        --drains
          
	    Limit for the number of drains in the group.
	
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --mem
          
	    Amount of memory applications can use.

	    Use the suffices 'M' and 'G' for the convenient specification
	    of mega- and gigabytes. Without a unit-suffix mega-bytes are
	    assumed. As the base-unit megabytes must specified as integers.
	    Gigabytes can be specified as fractions.
	
        --no-sudo
          Complementary alias of --sudo.
        --services
          
	    Limit for the number of services in the group.
	
        --sudo
          
	    Applications can use sudo (or not).
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


    
.. _command-Administration-Quotas:
    
Quotas
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-quota configure:

      stackato quota configure  *<name>*       
        Reconfigure the named quota plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --allow-sudo
          
		Applications can use sudo in their container.
	    
        --droplets
          
		Limit for the number of droplets per application
		that are stored (older droplets that exceed this
		quota are removed and their associated versions
		can no longer be restored).
		This is a Stackato 3.4+ specific setting.
	    
        --mem
          
		Amount of memory applications can use.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --no-allow-sudo
          Complementary alias of --allow-sudo.
        --no-paid-services-allowed
          Complementary alias of --paid-services-allowed.
        --no-trial-db-allowed
          Complementary alias of --trial-db-allowed.
        --paid-services-allowed
          
		Applications can use non-free services.
	    
        --routes
          
		Limit for the number of routes in the quota.
		This is a Stackato 3.2+ specific setting.
	    
        --services
          
		Limit for the number of services in the quota.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --trial-db-allowed
          
		Applications can use trial databases.
		Before Stackato 3.4 only.
	    


.. _command-quota create:

      stackato quota create  *<name>*       
        Create a new quota plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --allow-sudo
          
		Applications can use sudo in their container.
	    
        --droplets
          
		Limit for the number of droplets per application
		that are stored (older droplets that exceed this
		quota are removed and their associated versions
		can no longer be restored).
		This is a Stackato 3.4+ specific setting.
	    
        --mem
          
		Amount of memory applications can use.

		Use the suffices 'M' and 'G' for the convenient specification
		of mega- and gigabytes. Without a unit-suffix mega-bytes are
		assumed. As the base-unit megabytes must specified as integers.
		Gigabytes can be specified as fractions.
	    
        --no-allow-sudo
          Complementary alias of --allow-sudo.
        --no-paid-services-allowed
          Complementary alias of --paid-services-allowed.
        --no-trial-db-allowed
          Complementary alias of --trial-db-allowed.
        --paid-services-allowed
          
		Applications can use non-free services.
	    
        --routes
          
		Limit for the number of routes in the quota.
		This is a Stackato 3.2+ specific setting.
	    
        --services
          
		Limit for the number of services in the quota.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        --trial-db-allowed
          
		Applications can use trial databases.
		Before Stackato 3.4 only.
	    


.. _command-quota delete:

      stackato quota delete  *<name>*       
        Delete the named quota plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-quota list:

      stackato quota list       
        List the available quota plans. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-quota rename:

      stackato quota rename  *<name>*  *<newname>*       
        Rename the named quota plan. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-quota show:

      stackato quota show  *<name>*       
        Show the details of the named quota plan. If not specified it will be asked for interactively (menu). This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-quotas:

      stackato quotas       
        List the available quota plans. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


    
.. _command-Administration-Space Quotas:
    
Space Quotas
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-create-space-quota:

      stackato create-space-quota  *<name>*       
        Create a new space quota. It will be owned by the current or specified organization. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --instance-mem
          
		    Amount of memory application instances can use.

		    Use the suffices 'M' and 'G' for the convenient specification
		    of mega- and gigabytes. Without a unit-suffix mega-bytes are
		    assumed. As the base-unit megabytes must specified as integers.
		    Gigabytes can be specified as fractions.

		    Also accepts -1 and "unlimited" for unlimited memory.
		
        --mem
          
		    Amount of memory applications can use.

		    Use the suffices 'M' and 'G' for the convenient specification
		    of mega- and gigabytes. Without a unit-suffix mega-bytes are
		    assumed. As the base-unit megabytes must specified as integers.
		    Gigabytes can be specified as fractions.

		    Also accepts -1 and "unlimited" for unlimited memory.
		
        --no-paid-services-allowed
          Complementary alias of --paid-services-allowed.
        --organization
          
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
        --paid-services-allowed
          
		    Applications can use non-free services.
		
        --routes
          
		    Limit for the number of routes in the quota.
		
        --services
          
		    Limit for the number of services in the quota.
		
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -i
          Alias of --instance-mem.
        -m
          Alias of --mem.
        -o
          Alias of --organization.
        -r
          Alias of --routes.
        -s
          Alias of --services.


.. _command-delete-space-quota:

      stackato delete-space-quota  *<name>*       
        Delete the named space quota. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-rename-space-quota:

      stackato rename-space-quota  *<name>*  *<newname>*       
        Rename the named space quota. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-set-space-quota:

      stackato set-space-quota  *<name>*       
        Assign the specified space quota to the current or specified space. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --organization
          
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
        --space
          
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-space-quotas:

      stackato space-quotas       
        List the space quotas owned by the current or specified organization, or all. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --all
          
		    Show all space quotas instead
		
        --full
          
		    Show all information about the space-quota.
		
        --json
          
	    Print raw json as output, not human-formatted data.
	
        --organization
          
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-space-quota:

      stackato space-quota  *<name>*       
        Show the details of the named space quota. If not specified it will be asked for interactively (menu). This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-unset-space-quota:

      stackato unset-space-quota       
        Drop the space quota from the current or specified space. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --organization
          
	    The name of the parent organization to use as context.

	    Defaults to the current organization.

	    A current organization is automatically set if there is none,
	    either by taking the one organization the user belongs to, or
	    asking the user to choose among the possibilities.
	
        --space
          
	    The name of the space to use as context.

	    Defaults to the current space.

	    A current space is automatically set if there is none,
	    either by taking the one space the user has, or
	    asking the user to choose among the possibilities.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-update-space-quota:

      stackato update-space-quota  *<name>*       
        Modify the named space quota. This is a Stackato 3.4.2 command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --instance-mem
          
		    Amount of memory application instances can use.

		    Use the suffices 'M' and 'G' for the convenient specification
		    of mega- and gigabytes. Without a unit-suffix mega-bytes are
		    assumed. As the base-unit megabytes must specified as integers.
		    Gigabytes can be specified as fractions.

		    Also accepts -1 and "unlimited" for unlimited memory.
		
        --mem
          
		    Amount of memory applications can use.

		    Use the suffices 'M' and 'G' for the convenient specification
		    of mega- and gigabytes. Without a unit-suffix mega-bytes are
		    assumed. As the base-unit megabytes must specified as integers.
		    Gigabytes can be specified as fractions.

		    Also accepts -1 and "unlimited" for unlimited memory.
		
        --no-paid-services-allowed
          Complementary alias of --paid-services-allowed.
        --paid-services-allowed
          
		    Applications can use non-free services.
		
        --routes
          
		    Limit for the number of routes in the quota.
		
        --services
          
		    Limit for the number of services in the quota.
		
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -i
          Alias of --instance-mem.
        -m
          Alias of --mem.
        -r
          Alias of --routes.
        -s
          Alias of --services.


    
.. _command-Administration-User Management:
    
User Management
^^^^^^^^^^^^^^^^^^^^^^^^
      
.. _command-add-user:

      stackato add-user  *<name>*       
        Register a new user in the current or specified target. This operation requires administrator privileges, except if "allow_registration" is set server-side. This exception is specific to Stackato 2.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --admin
          
		Give the newly created user administrator privileges.
	    
        --apps
          
	    Limit for the number of applications in the group.
	
        --appuris
          
	    Limit for the number of mapped uris per application.
	
        --auditor
          
		Add the new user to the organization, as auditor.
		By request.
	    
        --drains
          
	    Limit for the number of drains in the group.
	
        --email
          
		The email of the user to create.
		This is a Stackato 3 specific option.
	    
        --family
          
		The family name of the user. Left empty if not specified.
		This is a Stackato 3 specific option.
	    
        --given
          
		The given name of the user. Left empty if not specified.
		This is a Stackato 3 specific option.
	    
        --group
          
		The group to put the new user into.
		This is a Stackato 2 specific option.
	    
        --manager
          
		Add the new user to the organization, as manager.
		By request
	    
        --mem
          
	    Amount of memory applications can use.

	    Use the suffices 'M' and 'G' for the convenient specification
	    of mega- and gigabytes. Without a unit-suffix mega-bytes are
	    assumed. As the base-unit megabytes must specified as integers.
	    Gigabytes can be specified as fractions.
	
        --no-auditor
          Complementary alias of --auditor.
        --no-manager
          Complementary alias of --manager.
        --no-organization
          
		Flag to indicate that the new user should not be placed into any organization.
		This is a Stackato 3 specific option.
		Cannot be used together with --organization.
		When used any --manager and --auditor flags are ignored.
	    
        --no-sudo
          Complementary alias of --sudo.
        --organization
          
		The organization to place the new user into.
		Defaults to the current organization.
		This is a Stackato 3 specific option.
		Cannot be used together with --no-organization.
	    
        --passwd
          Alias of --password.
        --password
          
		The password to use.
	    
        --services
          
	    Limit for the number of services in the group.
	
        --sudo
          
	    Applications can use sudo (or not).
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-delete-user:

      stackato delete-user  *<email>*       
        Delete the named user, and the user's applications and services from the current or specified target. This operation requires administrator privileges.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-login-fields:

      stackato login-fields       
        Show the names of the credential fields needed for a login. This is a Stackato 3 specific command.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-passwd:

      stackato passwd       
        Change the password of the current user in the current or specified target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --passwd
          Alias of --password.
        --password
          
		The new password. If not present it will be interactively
		asked for.
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-register:

      stackato register  *<name>*       
        Register a new user in the current or specified target. This operation requires administrator privileges, except if "allow_registration" is set server-side. This exception is specific to Stackato 2.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --admin
          
		Give the newly created user administrator privileges.
	    
        --apps
          
	    Limit for the number of applications in the group.
	
        --appuris
          
	    Limit for the number of mapped uris per application.
	
        --auditor
          
		Add the new user to the organization, as auditor.
		By request.
	    
        --drains
          
	    Limit for the number of drains in the group.
	
        --email
          
		The email of the user to create.
		This is a Stackato 3 specific option.
	    
        --family
          
		The family name of the user. Left empty if not specified.
		This is a Stackato 3 specific option.
	    
        --given
          
		The given name of the user. Left empty if not specified.
		This is a Stackato 3 specific option.
	    
        --group
          
		The group to put the new user into.
		This is a Stackato 2 specific option.
	    
        --manager
          
		Add the new user to the organization, as manager.
		By request
	    
        --mem
          
	    Amount of memory applications can use.

	    Use the suffices 'M' and 'G' for the convenient specification
	    of mega- and gigabytes. Without a unit-suffix mega-bytes are
	    assumed. As the base-unit megabytes must specified as integers.
	    Gigabytes can be specified as fractions.
	
        --no-auditor
          Complementary alias of --auditor.
        --no-manager
          Complementary alias of --manager.
        --no-organization
          
		Flag to indicate that the new user should not be placed into any organization.
		This is a Stackato 3 specific option.
		Cannot be used together with --organization.
		When used any --manager and --auditor flags are ignored.
	    
        --no-sudo
          Complementary alias of --sudo.
        --organization
          
		The organization to place the new user into.
		Defaults to the current organization.
		This is a Stackato 3 specific option.
		Cannot be used together with --no-organization.
	    
        --passwd
          Alias of --password.
        --password
          
		The password to use.
	    
        --services
          
	    Limit for the number of services in the group.
	
        --sudo
          
	    Applications can use sudo (or not).
	
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
        -o
          Alias of --organization.


.. _command-token:

      stackato token       
        Interactively set authentication token.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-unregister:

      stackato unregister  *<email>*       
        Delete the named user, and the user's applications and services from the current or specified target. This operation requires administrator privileges.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


.. _command-users:

      stackato users       
        Show the list of users known to the current or specified target.

        .. raw:: html

          <div class="spoiler">
          <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
          <div class="inner" style="display:none;">

        --json
          
	    Print raw json as output, not human-formatted data.
	
        --mode
          
		Select the details to show
		("name" information (default), "related" entities, and "all").
	    
        --target
          
	    The once-off target to use for the current operation.
	
        --token
          
	    The once-off authentication token to use for the
	    current operation.
	
        --token-file
          
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	


  
Convenience
------------------------

    
.. _command-aliases:
  
  stackato aliases 
    List the known aliases (shortcuts).

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    
.. _command-alias:
  
  stackato alias  *<name>*  *<command>* 
    Create a shortcut for a command (prefix).

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-unalias:
  
  stackato unalias  *<name>* 
    Remove a shortcut by name.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">



  
Miscellaneous
------------------------

    
.. _command-admin:
  
  stackato admin 
    A set of adminstrative tasks.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-color:
  
  stackato color 
    Management of terminal colors

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-curl:
  
  stackato curl  *<operation>*  *<path>*  *<header>* 
    Run a raw rest request against the chosen target.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --data
      
		Payload to use for PUT and POST.
		Cannot be used with neither GET nor DELETE.
		A value of "-" or "stdin" causes the client to read the data from stdin.
	    
    --form
      
		Zero or more form fields to be added to the base url.
		Data is in the form of "key: value".
	    
    --output
      
		Path to the file to write the returned payload to.
		A value of "-" or "stdin" causes the client to write
		the data to stdout.
	    
    --port
      
		The port to use for the request.
		Only relevant to websocket operation.
	    
    --reconnect
      
		Automatically reconnect when the websocket server
		closes the connection. Only relevant to websocket
		operation.
	    
    --show-extended
      
		Show additional information about the request, i.e.
		response headers and the like.
	    
    --target
      
	    The once-off target to use for the current operation.
	
    --token
      
	    The once-off authentication token to use for the
	    current operation.
	
    --token-file
      
	    Path to an existing and readable file containing
	    the targets and authorization tokens.
	
    --web-socket
      
		Switch to WebSocket mode for GET.
		Cannot be used with any other operation.
	    
    --ws
      Alias of --web-socket.
    -d
      Alias of --data.
    -O
      Alias of --output.
    -o
      Alias of --output.
    -W
      Alias of --web-socket.
    
.. _command-drain:
  
  stackato drain 
    Commands for the management of drains attached to applications.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-groups:
  
  stackato groups 
    A collection of commands to manage groups and the users in them.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-guid:
  
  stackato guid  *<type>*  *<name>* 
    Map the specified name into a uuid, given the type. This is a Stackato 3 specific command.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    --target
      
	    The once-off target to use for the current operation.
	
    
.. _command-history:
  
  stackato history 
    

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-named-entities:
  
  stackato named-entities 
    List the entity types usable for 'guid'. I.e. the types of the named entities known to the client.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --json
      
	    Print raw json as output, not human-formatted data.
	
    
.. _command-quota:
  
  stackato quota 
    Management of quota plans.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    
.. _command-trace:
  
  stackato trace 
    Print the saved REST trace for the last client command to stdout.

    .. raw:: html
    
      <div class="spoiler">
      <a style="font-size: x-small" onclick="showSpoiler(this);"/>+ options</a>
      <div class="inner" style="display:none;">

    --short
      
		When present, show only the short list of requests,
		without details like headers and responses.
	    



.. raw:: html

  <script type="text/javascript">
    function showSpoiler(obj)
    {
      var inner = obj.parentNode.getElementsByTagName("div")[0];
      if (inner.style.display == "none") {
        inner.style.display = "";
        obj.innerHTML = '- options'
      }
      else {
        inner.style.display = "none";
        obj.innerHTML = '+ options'
      }

	return false;

    }
  </script>


