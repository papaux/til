Scripts boilerplate
-------------------

Common operations that we usually want to perform in bash scripts.

if grep
~~~~~~~~

Want to combine `grep` and `if` to do something in case a string is find or not ?

::

  if grep --quiet text somefile.txt; then
    echo "Text Found"
  else
    echo "Text not Found"
  fi

