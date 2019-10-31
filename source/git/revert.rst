Revert commands
---------------

Revert changes introduced by the three last commits without generating revert commits

::

  git revert --no-commit HEAD~3..HEAD