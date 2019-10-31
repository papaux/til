Git branches
--------------

List all branches

::

  git branch -a

List git branches sorted by last commit date. First comand is "newest first" and second command is "oldest first":

::

  git branch --sort=-committerdate
  git branch --sort=committerdate

Rename a branch

::

  git branch -m old_name new_name

Delete a branch that has been merged

::

  git branch -d branchname

Delete a branch that has not been merged

::

  git branch -D branchname