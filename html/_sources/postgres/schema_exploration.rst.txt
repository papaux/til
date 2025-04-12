Schema exploration in Postgres
------------------------------

Help
~~~~

Help on some statements::

  \h ALTER TABLE

Connect
~~~~~~~

Connect to the database::

  psql -d my_db

  # or

  \c my_db

Formatting
~~~~~~~~~~

Enable query time reporting::

  \timing

Nice formatting::

  \x

Command history::

  \s

List databases
~~~~~~~~~~~~~~

List databases::

  \l

List databases with details::

  \l+

List tables
~~~~~~~~~~~~~~


Show tables::

  \dt

Show tables from another schema::

  \dt sales.*

Describe a table, including columns and data types::

  \d saltes.address

List other items
~~~~~~~~~~~~~~~~

List schemas::

  \dn

List index::

  \di sales.*

List views::

  \dv views

List functions::

  \df functions

List users::

  \du users

List groups::

  \dg groups

