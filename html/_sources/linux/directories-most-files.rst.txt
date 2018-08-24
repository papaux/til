Directories with most files
----------------------------

These are some bash commands to find which directories are containing the most files in your disk.

The command has to be executed from the folder you want to analyze.

First level only:

::

    find . -xdev -type d -print0 |
      while IFS= read -d '' dir; do
        echo "$(find "$dir" -maxdepth 1 -print0 | grep -zc .) $dir"
      done |
      sort -rn |
      head -50
      
Overall:

::

    find . -xdev -type d -print0 |
      while IFS= read -d '' dir; do
        echo "$(find "$dir" -print0 | grep -zc .) $dir"
      done |
      sort -rn |
      head -50