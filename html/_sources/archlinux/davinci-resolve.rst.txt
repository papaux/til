Davinci Resolve on Arch
-----------------------

There is an AUR package, but I had trouble to get it working.
The first issue was qt5-webenging causing GCC segfault.

This is how I did using info from AUR, arch wiki and this post
https://forum.blackmagicdesign.com/viewtopic.php?f=21&t=237038

1. Install dependencies from AUR::

    yay -S qt5-multimedia libpng12 qt5-websockets

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

7. Start resolve::

    /opt/resolve/bin/resolve

8. If getting ``undefined symbol: _ZNSt3__117bad_function_callD1Ev`` at startup, then some custom libs are needed::

    mkdir -p ~/tmp && cd ~/tmp
    curl -L -o libc++-20.1.6-2-x86_64.pkg.tar.zst \\n'https://archive.archlinux.org/packages/l/libc%2B%2B/libc%2B%2B-20.1.6-2-x86_64.pkg.tar.zst'
    ll
    curl -L -o libc++abi-20.1.6-2-x86_64.pkg.tar.zst \\n'https://archive.archlinux.org/packages/l/libc%2B%2Babi/libc%2B%2Babi-20.1.6-2-x86_64.pkg.tar.zst'
    sudo bsdtar -C /opt/resolve/libs -xf libc++-20.1.6-2-x86_64.pkg.tar.zst usr/lib
    sudo bsdtar -C /opt/resolve/libs -xf libc++abi-20.1.6-2-x86_64.pkg.tar.zst usr/lib
    cd /opt/resolve/libs
    sudo mv usr/lib/libc++*.so* . && sudo rm -r usr

9. Try starting again::

    /opt/resolve/bin/resolve

