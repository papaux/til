Codebase Analysis
=================

Based on this blog post: https://piechowski.io/post/git-commands-before-reading-code/

The 20 most changed files in the last year::

    git log --format=format: --name-only --since="1 year ago" | sort | uniq -c | sort -nr | head -20

Every contributor ranked by commit count::

    git shortlog -sn --no-merges

In which files are bugs located::

    git log -i -E --grep="fix|bug|broken" --name-only --format='' | sort | uniq -c | sort -nr | head -20

Commit count by month for the entire history::

    git log --format='%ad' --date=format:'%Y-%m' | sort | uniq -c

Revert and hotfix frequency::

    git log --oneline --since="1 year ago" | grep -iE 'revert|hotfix|emergency|rollback'
