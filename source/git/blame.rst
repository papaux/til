Blame
-----

Graphical git blame 
~~~~~~~~~~~~~~~~~~~

It took me some time to find a powerful git blame interface. In fact the integrated git gui is a very effective tool and has an interesting blame view, capable of following commits by clicking on them and also following renamed / moved files.

Just start blaming a file with:

::

  git gui blame path/to/file.src


**Install on Arch Linux**

This git gui is an optional dependcy of the git package on Arch Linux.
You can install it with:

:: 
  
  pacman -S tk

