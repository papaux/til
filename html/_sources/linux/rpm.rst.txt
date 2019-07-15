RPM Files
---------

Some useful commands to manage and handle RPM files.

Extract content
~~~~~~~~~~~~~~~~

Use this command to extract the content of an RPM package

::

  rpm2cpio rpm-archive.rpm | cpio -idmv