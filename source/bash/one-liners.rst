Bash One-Liners
---------------

Histogram in bash
~~~~~~~~~~~~~~~~~

Create a nice looking histogram based on the number of elements found when counting with ``uniq``.

::

  $ cat somefile | sort | uniq -c | perl -lane 'print $F[1], "\t", $F[0], "\t", "=" x ($F[0] / 3 + 1)'
  2003  1   =
  2004  1   =
  2008  1   =
  2009  10  ====
  2010  3   ==
  2011  4   ==
  2012  2   =
  2013  9   ====
  2014  19  =======
  2015  16  ======
  2016  33  ============
  2017  32  ===========
  2018  91  ===============================
  2019  75  ==========================
  2020  14  =====

Install if needed
~~~~~~~~~~~~~~~~~

Test if a command is available and if not, install it.::

  [ ! -x "$(command -v docker)" ] && apt install docker

Exit if command not found
~~~~~~~~~~~~~~~~~~~~~~~~~~

Check if a given command is available in the path, otherwise exit::

  command -v mybin >/dev/null 2>&1 || echo "mybin is not available in your PATH." && exit 1


Check if file exists
~~~~~~~~~~~~~~~~~~~~

Check if a given file exists, printing a message and exiting if not::

  [ ! -f $FILE ] && echo "$FILE does not exist." && exit 1

Check ping result
~~~~~~~~~~~~~~~~~

Execute command if host / down according to ping result::

  ping -c 1 192.168.1.1 &> /dev/null && echo "up" || echo "down"

Operations on diectories
~~~~~~~~~~~~~~~~~~~~~~~~

Compute md5sum of directory content::

  find . -type f -exec md5sum {} \; | tee md5res.txt

Move every file in the current folder to a new folder having the same name, without extension::

  for f in $(find . -type f); do mkdir "${f%.*}"; mv "$f" "${f%.*}"; done

Replace spaces in file name by .::

  for f in $(find . -type f); do mv "$f" "${f// /.}"; done

