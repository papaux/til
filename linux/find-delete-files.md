# find: delete files

Did you know we can tell the `find` command line utility to delete automatically the files matching the search ?

Please be carefull with this and make sure you are not going to delete something else than what you wanted... Now that you are warned, so check the command:


```
find ~/path/to/dir -name "file-pattern*" -print -delete
```