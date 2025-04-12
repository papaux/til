Picture exif manipulation
--------------------------

Rename file according to exif
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Renames the picture file according to its exif date, for instance *2014_0514_183702.jpg*.::

   exiv2 -r %Y_%m%d_%H%M%S $file

To do it recursively in the current directoy, following command can be used.::

   find . -name "*jpg*" -print0 | xargs -0 -n 1 sh -c 'exiv2 -r %Y_%m%d_%H%M%S "$0"'

Modify exif data
~~~~~~~~~~~~~~~~

Shift exif times from eight hous (year:month:day hour:minute:second)::

  exiftool "-AllDates+=0:0:0 8:0:0" -overwrite_original DSC03*


