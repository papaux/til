Gitignore syntax
-----------------

This is an attempt to clarify the syntax speciality for ``.gitignore`` files.

- ``/``: pattern will use the location of the ``.gitignore`` file as root
- ``**``: used to make a pattern starting with ``/`` anywhere in the repo
- ``*.bin``: ignore all files that end with ``.bin``
- ``build``: ignore all files and directories named ``build``
- ``build/``: ignore all directories named ``build``
- ``/build``: ignore file or directory named ``build`` at the root of the repository
- ``/ignore/me``: ignore file or directory ``me`` in repo root directory ``ignore``
- ``**/ignore/me``: ignore all files and directories ``me`` which live in a dir ``ignore``
