sudo timeouts
---------------

The default timeouts for ``sudo`` commands are pretty aggressive.

Here are two parameters to tweek the sudo behavior:

* ``passwd_timeout``: Number of minutes before the sudo password prompt expires.
* ``timestamp_timeout``: Number of minutes before the user needs to re-enter the sudo password.

You need to apply these changes to the sudoers config file. Usually with ``sudo visudo`` command.

::

    Defaults env_reset,passwd_timeout=30,timestamp_timeout=30