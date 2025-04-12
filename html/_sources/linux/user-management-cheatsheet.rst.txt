User Management Cheatsheet
--------------------------

As other TILs, this one is a cheatsheet regrouping typical Linux commands for managing the users.

User
~~~~~

**Create User**

There are two utilities to add user. The first one, ``adduser`` is the default builtin command. The recommended tool is ``useradd`` is a perl script using adduser in the background but doing some additional initializations for the newly created user. Therefore the recommended way is to user **useradd**.

::

  adduser leopold
  
**Disable user**

One possible way of disabling a user account is to lock it with the passwd tool:

::
  
  passwd leopold -l

Groups
~~~~~~~

**Add existing user to existing group**

This is for me the most common use case.

::

  usermod -a -G wireshark leopold