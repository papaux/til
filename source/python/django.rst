Django
------

Revert/combine uncommitted migration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You are developing a new feature. You already created a migration file that you applied, but did not commit yet.
You make changes to the model, and you would like to combine this change with the previous migraiton.

This is how to proceed:

1. List the migration to find the last one before your change::

    python manage.py showmigrations

2. Revert to the state before your last uncommitted migration::

    python manage.py migrate myproject 0054_auto_20240703_1421

3. Delete the file from the previous migration

4. Create a new migration that combines the previous and new changes::

    python manage.py makemigrations

5. Apply the migrations::

    python manage.py migrate
