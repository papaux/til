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

Merge commit
~~~~~~~~~~~~~

If you want to check if a commit is a merge commit or a squashed commit, you can check if it has one or more parents.

::

  git cat-file -p COMMIT_ID

If it has several parents, it's a merge commit.