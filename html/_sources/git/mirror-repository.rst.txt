Replicate a repository (branches+tags)
--------------------------------------

For creating a backup or migrating an entire repository, e.g. from github to gitlab, including all branches and tags (not talking about issues nor PR), there are several options but the easiest is probably the concept of mirror.

Mirror
~~~~~~

  .. warning::

    This doesn't create a regular "clone" of the repository that can be used for development. It is really a backup of the entire repository.


Create a clone of the repository with the `--mirror` option::

  git clone --mirror git@github.com:some/repository

Add the new remote::

  git remote add gitlab git@gitlab.com:some/repository

Push all branches and tags with the `--mirror` option::

  git push gitlab --mirror


