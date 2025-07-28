PR Stacking Flow
-----------------

Imagine this scenario: you completed some changes, opened a PR to your main branch.
These changes are not merged yet, but you need to start a new task that builds on the previous changes.
Of course, you want to minimize the merge / rebase overhead.

One solution is to create a new branch based off your last feature branch, squash all the previous commits into one, and then start implementing your feature. That way, when the original changes are integrated into the main branch, you can simply rebase, removing the squashed commit.

1. Stash all uncommitted changes::

    git stash

2. Create a new branch (feature-2) based on the previous feature branch (feature-1)::

    git checkout -b feature-2 feature-1

3. Reset all the commits not yes in develop, keeping the actual file changes::

    git reset --soft $(git merge-base develop HEAD)

4. Create a commit with a meaningful name. This commit will need to be erased from history when the original feature has been merged::

    git commit -m "DROP ME squash commits from previous feature branch"

5. Unstash::

    git stash apply

6. Once the original changes have been merged to develop, rebase and delete the line with the DROP ME commit::

    git rebase -i origin/develop

    ...
    drop 0135a1609 DROP ME squash commits from previous feature branch
    ...