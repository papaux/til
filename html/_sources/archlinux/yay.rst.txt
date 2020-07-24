Yay: installer for AUR packages
-------------------------------

Yay is a replacement for ``yaourt``. This is a cheatsheet with useful commands.

**Disable compression**

On slow hardware, compressing packages might take a very and unnecessary long time if you clean your cache frequently.

This will install packages without compressing them::

  PKGEXT='.pkg.tar' yay -Syu
