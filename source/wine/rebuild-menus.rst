Rebuild Wine Menus
-------------------

Following command will regenerate Wine menus according to all .lnk found in the wine working directory.

::

    export WINEPREFIX=~/.wine; find $WINEPREFIX/drive_c/ -name "*.lnk" -exec wine winemenubuilder '{}' \;


