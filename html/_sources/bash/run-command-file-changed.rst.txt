Run command on file change
---------------------------

Tools from the ``inotify`` family allow to watch for events on file system.

For instance the ``inotifywait`` tool allows to be notified as soon as a file is modified.

You first need to install the tool

::

  sudo pacman -S inotify-tool 
  
  
And then you can watch for file changes. In this oneliner we re-run an executable file as soon as it has been recompiled:

::
  
   while inotifywait -e close_write main; do sleep 1; ./main ; done
