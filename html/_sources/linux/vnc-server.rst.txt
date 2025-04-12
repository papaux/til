VNC Server
----------

The easiest and flexiblest way to remotely connect to your Linux station is by using VNC. And I find especially convenient to have a dedicated X instance for your remote connection: you  can have multiple sessions, setup custom resolution, etc.

There are several vnc server available out there. I was always satisfied with  ``tightvncserver`` (or tigervnc fork).

First install the tool using your distribution's package manager.

Starting a new session is as easy as executing:


::

  vncserver -geometry 1920x1080


The first time you will be asked to enter a password.

Then it will tell you the desktop id and you can connect with your favorite vnc viewer.

Manage VNC sessions
~~~~~~~~~~~~~~~~~~~~

List sessions

::

  vncserver -list


Kill session (session 1 in the example)

::

  vncserver  -kill :1

Note that I encourage setting up a ssh tunnel to encapsulate your VNC session.
