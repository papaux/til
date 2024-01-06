Rebase/Squash strategies
------------------------

**"Squash" all commits into one**

This allows to create a single commit with all the changes between the current branch and the branch you are rebasing on.

It requires a clean local state before starting (no unstaged changes).

::

    git checkout <branch>
    git reset origin/<branch>
    git add .
    git commit -m <message>
    git push -f
