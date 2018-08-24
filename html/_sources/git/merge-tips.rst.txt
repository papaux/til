Merge tips
-----------

Replay merge for a single file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You are in the middle of a merge (before concluding the merge) and suddenly you realised that you didn't solve one conflicting file correctly.

You can replay the file merge by using the following command:

::

  git checkout -m path/to/file

From the help:

::

  With -m, changes made to the working tree file can be discarded to re-create the original
           conflicted merge result.
