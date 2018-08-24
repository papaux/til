Rebase with conflicts
----------------------

You are working on your own feature branch and want to update with the changes from the main development or master branch from remote.

You need to **rebase**. Maybe there will be some conflicts...

1. First of all, fetch the latest changes from your remote.

  ::

    git fetch

2. Invoke rebase, in interactive mode to be able to select which commits you want

  ::

    git rebase -i origin/story/695-event-counter-meter-panel

3. Select the commits

  Your favorite text editor opens. You can here reorganize your commits. Once done, exit and save.

4. There are some conflicts....


  ::

    error: could not apply 93dd575... implement logic for event counter and handle enable / disable

    When you have resolved this problem, run "git rebase --continue".
    If you prefer to skip this patch, run "git rebase --skip" instead.
    To check out the original branch and stop rebasing, run "git rebase --abort".
    Could not apply 93dd57535383068e720fdfd83f03e42f15ededa1... implement logic for event counter and handle enable / disable

5. Open your merge tool to resolve conflict (kdiff3NoAuto is my custom merge command invoking kdiff)

  ::

    git mergetool -t kdiff3NoAuto


6. Once the conflicts are resolved, finalize the rebase


  ::

    git rebase --continue
