SSH Remove hostname
--------------------

Your machine behind an IP / DNS name changed ? You will get an error while trying to login using SSH or any service using it, telling that the host may have been hacked and if you want to login you have to remove it from the list of known hosts.

There is a simple command to do it:

::

    ssh-keygen -R hostname