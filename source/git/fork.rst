Fork
----

Some helpers when dealing with fork of repository.

Synchronize
~~~~~~~~~~~

This assumes the upstream is called `origin` and the fork is called `fork`.

Setup all remote branches tracking to local branches::

  remote=origin ; for brname in `git branch -r | grep origin | grep -v master | grep -v HEAD | sed -e 's/.*\///g'`; do git branch --track $brname  $remote/$brname ; done

Update all local branches::

  git pull --rebase --all

Push branches and tags to the fork::

  git push --all maxandersen
  git push --tags maxandersen
