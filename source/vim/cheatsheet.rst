vim cheatsheet
---------------

Another vim cheatsheet based on my needs / feelings / findings.

Credits to

- http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/

Moves on line
~~~~~~~~~~~~~~
- ``hjkl``: basic moves ←↓↑→
- ``0``: go to the first column
- ``^``: go to the first non-blank character of the line
- ``$``: go to the end of line
- ``g_``: go to the last non-blank character of line
- ``fa``: go to next occurrence of the letter ``a`` on the line. ``,`` (resp. ``;``) will find the next (resp. previous) occurrence
- ``t,``: go to just before the character ``,``
- ``F`` and ``T``: like ``f`` and ``t`` but backward
- ``3fa`` → find the 3rd occurrence of ``a`` on this line

Moves on document
~~~~~~~~~~~~~~~~~~
- ``NG``: go to line N
- ``gg``: shortcut for 1G - go to the start of the file
- ``G``: go to last line
- ``w``: go to the start of the following word 
- ``e``: go to the end of this word.
- ``W``: go to the start of the following word (space separator)
- ``E``: go to the end of this word (space separator)
- ``%``: Go to the corresponding (, {, [.
- ``*``: go to next occurrence of the word under the cursor
- ``#``: go to previous occurrence of the word under the cursor

Modification
~~~~~~~~~~~~
- ``a``: insert after the cursor
- ``o``: insert a new line after the current one
- ``O``: insert a new line before the current one
- ``cw``: replace from the cursor to the end of the word
- ``dd``: delete (and copy) the current line

Search / Replace
~~~~~~~~~~~~~~~~
- ``/pattern``: search for pattern
- ``:%s/foo/bar/g``: find each occurrence of 'foo' (in all lines), and replace it with 'bar'. 
- ``:s/foo/bar/g``: find each occurrence of 'foo' (in the current line only), and replace it with 'bar'. 
- ``:%s/foo/bar/gc``: change each 'foo' to 'bar', but ask for confirmation first. 

Copy/Paste
~~~~~~~~~~~
- ``p``: paste
- ``P``: paste before 
- ``yy``: copy the current line, easier but equivalent to ``ddP``
- ``:set paste``: enable special paste mode to turn off autoindent when you paste code
- ``:set nopaste``: turn off the paste-mode, so that auto-indenting when you type works correctly again.

Undo/Redo
~~~~~~~~~
- ``u``: undo
- ``<C-r>``: redo

Tab/space handling
~~~~~~~~~~~~~~~~~~
- ``:set tabstop=2 shiftwidth=2 expandtab``: configure and enable expand tab
- ``:set retab``: replace tab to spaces when ``expandtab`` is already enabled
- ``:set et|retab``: replace tab to spaces (first enable option ``expandtab`` with ``et``)

Macro
~~~~~
Macros are recorded in *registers* (``a`` to ``z``).

- ``qa``: start recording to register *a*
- ``q``: stop recording
- ``@a``: playback register *a* 
- ``qaq``: delete recording stored in register *a*

Load/Save
~~~~~~~~~
- ``:e <path/to/file>``: open
- ``:w``: save
- ``:saveas <path/to/file>``: save to <path/to/file>
- ``:x, ZZ or :wq``: save and quit (:x only save if necessary)
- ``:q!``: quit without saving, also: :qa! to quit even if there are modified hidden buffers.
- ``:bn (resp. :bp)``: show next (resp. previous) file (buffer)

Combine
~~~~~~~
One can combine the moves with commands in order to apply an operation from a start point to an end point:

``<start position><command><end position>``

For example : ``0y$`` means

- ``0``: go to the beginning of this line
- ``y``: yank from here
- ``$``: up to the end of this line

