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
