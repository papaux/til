Cheatsheet
----------

Get information about DB / users
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**List databases**

::
    
    SHOW DATABASES;

**List users**

::

    SELECT User FROM mysql.user;

**View user permissions**

::

    SHOW GRANTS FOR 'root'@'localhost';
    
    
Manage users
~~~~~~~~~~~~~

**Grant all privileges on DB**

::
    
    GRANT ALL PRIVILEGES ON testdb . * TO 'testuser'@'localhost';

**Revoke all privileges**

::
    
    REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'testuser'@'localhost';

**Revoke privileges on specific db**

::

    REVOKE ALL PRIVILEGES ON testdb . * FROM 'testuser'@'localhost';

Manage databases
~~~~~~~~~~~~~~~~~~~~