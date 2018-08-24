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

**Export**

Using mysqldump tool

::
    
    mysqldump -u [user] -p [db_name] | gzip > [filename_to_compress.sql.gz] 

**Import**

Simply execute the following command

::
    gunzip < [compressed_filename.sql.gz]  | mysql -u [user] -p[password] [databasename] 
    
Note: There is no space between the keyword '-p' and your password.
