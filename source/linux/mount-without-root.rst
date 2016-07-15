Mount without root
-------------------

When mounting shared folders such as samba shares, we don't want them to be mounted when we don't need them or when the server is not available, that is we don't want to mount automatically at startup.

It's still possible to use the mount command, but then root access is required.

There is a solution to have both advantages: mount pre-defined folders "on demand" without root access.

THis is achieved by putting a corresponding entry in ``fstab`` and adding the option ``noauto``.

Example of such an a fstab entry:
::

  //server/share /mount/point cifs noauto,user 0 0