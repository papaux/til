# Clean including untracked files

Sometimes it is useful to reset the local working copy of git repository as if it was a fresh clone, thus removing also files that are in `.gitignore`.

Be careful if you have some specific configurations which are not checked in because everything will be deleted.

Simply run the following command:

```
git clean -fdx
```

The options:
* `-f` for forcing
* `-d` for including directories
* `-e` for removing untracked files

You can also make a dry run (just show the list of files that will be deleted, but do not delete) with the `-n` option
