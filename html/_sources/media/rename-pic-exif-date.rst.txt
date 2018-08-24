Rename picture to exif date
----------------------------

This command renames the specified picture file according to its exif date, for instance *2014_0514_183702.jpg*.

::

   exiv2 -r %Y_%m%d_%H%M%S $file


To do it recursively in the current directoy, following command can be used.

::

   find . -name "*jpg*" -print0 | xargs -0 -n 1 sh -c 'exiv2 -r %Y_%m%d_%H%M%S "$0"'

