Create empty branch
--------------------

You are working on a project, you added tons of files but then you realize that you need to start another branch from scratch.
It could to create a documentation branch, push the database from a website or whatever reason.

This can be done easily with ``git checkou --orphan <branch>``. 
You then need to clean the uncommited changes.

For example, to create a new empty branch ``doc``

::

  git checkout --orphan doc
  git rm -rf .

