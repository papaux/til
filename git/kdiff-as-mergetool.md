# Kdiff as mergetool without auto merge

Kdiff has a nice interface for resolving merge conflicts with four views: BASE – LOCAL – REMOTE – MERGE RESULT. It is very helpful for resolving complex conflicts.

At startup, kdiff tries to perform some kind of "clever" auto-merge – and if it is successful it will directly save the files, close itself and that's it.
BUT Kdiff is not as clever as it thinks and sometimes it does completely wrong conflict resolutions.

With the following we will create a new mergetool which avoids this broken auto-merge feature of kdiff:

1. Open and configure kdiff
  Go to Settings -> Configure kdiff3… -> Merge and untick the “Auto save and quit on merge without conflicts”

2. Configure a new mergetool in your git config:

  ```
  git config --global mergetool.kdiff3NoAuto.cmd \
     "kdiff3 --L1 \"\$MERGED (Base)\" --L2 \"\$MERGED (Local)\" \
     --L3 \"\$MERGED (Remote)\" -o \"\$MERGED\" \"\$BASE\" \"\$LOCAL\" \"\$REMOTE\""
  ```


3. Resolve conflicts using this new mergetool:

  ```
  git mergetool –t kdiff3NoAuto
  ```

