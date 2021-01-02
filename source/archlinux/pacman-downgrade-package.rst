Pacman: downgrade package
--------------------------

If you want to downgrade a package but you don't have it in your local cache anymore, you can still
find it in the archive server and install from there.

First locate your package there:
https://archive.archlinux.org/packages/

And then install it with

.. code::

    pacman -U https://archive.archlinux.org/packages/.../packagename.pkg.tar.xz
