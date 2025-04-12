AUR: patch
----------

Patch an AUR package and install locally.

::
  
   yay -G spotify
   cd spotify/
   vim version.patch # or directly edit pkgbuild
   patch -p1 < ./version.patch
   makepkg -Si
  