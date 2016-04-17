# Pacman: clean cache

By default pacman keeps a backup of all the packages you install. The files are located under `/var/cache/pacman/pkg` 
A single command can be used to clean everything up.

This is my recommanded command: it will delete old versions of packages and keep the currently installed one.

```
pacman -Sc
```

