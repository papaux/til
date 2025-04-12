Text sanitizing
----------------

This TIL contains some tips about how to sanitize text data.

**Remove unwanted characters**

Looking how to remove all spaces, new lines, and other escape characters from a string ? There is a nice way:

::

  my_string.filter(_ > ' ')

If you oepn an ASCII table, you'll notice that the space is the first printable char, so ignoring all smaller ones
will automatically clean your String.
