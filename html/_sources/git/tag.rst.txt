Tag commands
-------------

Annotated tags ``-a``, in addition to lightweight tag contains some metadata:
- committer name
- creation date
- etc.

Create a new annotated tag

::

  git tag -a v1.2 -m 'Release 1.2'

Remove a tag

::

  git tag -d beta

Delete a tag from remote

::

  git push :beta