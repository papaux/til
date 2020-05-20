Copy to clipboard
------------------

Copy a command output to the "global" clipboard, available outside of the terminal::

  echo "something" | xclip -selection clipboard

Copy to the 'X' clipboard::

  echo "something" | xclip

Paste something from the 'X' clipboard::

  xclip -o

