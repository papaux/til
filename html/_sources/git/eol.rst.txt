End of line
------------

Did you know git can interfere with new line endings ?

This shows an example where files have multiple, differnt eol handling::

    $ git ls-files --eol | grep csv
    i/lf    w/lf    attr/                   data/switzerland_city_zip.csv
    i/lf    w/      attr/                   export/tests/ref/export_all.csv.ref
    i/crlf  w/crlf  attr/                   export/tests/ref/export_single.csv.ref

- ``"i/<eolinfo>"`` eolinfo in the index
- ``"w/<eolinfo>"`` eolinfo in the working tree
- ``"attr/<eolattr>"`` eol git attribute (if any)

It is managed by `git config --get core.autocrlf`. Accepted values are:

- ``true``: convert to CRLF on commit, convert to LF on checkout
- ``input``: convert to CRLF on commit, don't convert on checkout
- ``false``: don't convert on commit, don't convert on checkout

Set it to ``false`` if you are on Linux and wants full control on line endings::

    git config set core.autocrlf false
