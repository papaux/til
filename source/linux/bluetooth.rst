bluetooth
---------

This page contains useful information and commands to manage bluetooth connections under Linux.

Manage connections
~~~~~~~~~~~~~~~~~~

The connection manager utility is `bluetoothctl`. It's an interactive-cli application so start it first::

  bluetoothctl

Start scanning (the tool will report found device in this window)::

  scan on

Pair with device::

  pair AB:CD:EF:01:02:03

List paired devices::

  paired-devices

Forget device::

  remove AB:CD:EF:01:02:03

