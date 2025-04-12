Undo in git
------------

Collection of useful commands to undo or change whatever you did wrong in git.

Undo committed changes
~~~~~~~~~~~~~~~~~~~~~~

Undo the last commit (but keep the changes)::

  git reset --soft HEAD~1

Undo changes to only one specific file::

  git checkout <hash> -- path/to/file


Undo staged changes
~~~~~~~~~~~~~~~~~~~

Unstage everything but keep changes::

  git reset

Undo unstaged changes
~~~~~~~~~~~~~~~~~~~~~

Permanently discard local changes to a file::

  git checkout -- <file>

Permanently discard **all** local changes::

  git reset --hard


Amend last commit
~~~~~~~~~~~~~~~~~~

Add file to last commit::

  git add <my-file>
  git commit --amend --no-edit

Branch
~~~~~~

You committed to master instead of a new branch::

  # create a new branch with your latest commit
  git branch feature
  # remove the last commit from the master branch
  git reset HEAD~ --hard
  git checkout feature

