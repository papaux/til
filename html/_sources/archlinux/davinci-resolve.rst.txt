Davinci Resolve on Arch
-----------------------

There is an AUR package, but I had trouble to get it working.
The first issue was qt5-webenging causing GCC segfault.

This is how I did.

1. Install dependencies from AUR::

    yay -S qt5-multimedia libpng12

2. Install pre-compiled dependencies

    - Download pre-built qt5-webengine as I had GCC crash while building it: https://sourceforge.net/projects/fabiololix-os-archive/files/Packages/

    - Install::

         sudo pacman -U qt5-webengine-5.15.19-4.1-x86_64.pkg.tar.zst

3. Get the prebuilt package::

    git clone https://aur.archlinux.org/davinci-resolve.git
    cd davinci-resolve

4. Download DaVinci resolve ZIP and save it in that folder

5. Make sure your build dir is NOT in /tmp as it uses lots of storage::

    $ grep BUILDDIR /etc/makepkg.conf
    BUILDDIR=$HOME/tmp/makepkg

6. Build and install::

    makepkg -i

