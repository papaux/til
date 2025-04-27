Scripts boilerplate
-------------------

Common operations that we usually want to perform in bash scripts.

Functions
~~~~~~~~~

::

  print_hello () {
    echo "Hello $1"
  }

  hello "sir"


if grep
~~~~~~~~

Want to combine `grep` and `if` to do something in case a string is find or not ?

::

  if grep --quiet text somefile.txt; then
    echo "Text Found"
  else
    echo "Text not Found"
  fi

Check arguments
~~~~~~~~~~~~~~~

Check if an argument has been set::

  if [ -z "$1" ]
    then
      echo "No argument supplied"
  fi

Get script directory
~~~~~~~~~~~~~~~~~~~~

::

  script_dir=$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" &>/dev/null && pwd -P)


