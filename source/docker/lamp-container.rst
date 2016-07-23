LAMP container
---------------

LAMP is the name given to a common software bundle containing everything for serving php web sites with web server and database.

Here we use a prebuilt image ``tutum/lamp``

1. Get the image

  ::

    docker pull tutum/lamp

2. Start the image with the link to your webiste

  ::
  
    docker run -d -p 8080:80 -p 3306:3306 -v /data/john/workspace/websites/:/app/ --name dev-lamp tutum/lamp

3. Access mysql

  **Get admin password**

  ::
    
    docker logs dev-lamp

  **Connect**

  Warning: need to specify the protocol otherwise it will try to connect to local server which may not exist

  ::
    
    mysql -uadmin -pJLd8eHByus2V -h localhost -P 3306 --protocol=tcp

  **Import database**
  
  ::
  
    mysql -uadmin -pJLd8eHByus2V -h localhost -P 3306 --protocol=tcp < mysql-dumpfile.sql

  **Recreate users**

  ::
    
    CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'test123test!';

  **Give access to database**

  ::
    
    GRANT ALL PRIVILEGES ON testdb . * TO 'testuser'@'localhost';

4. Access the website
  
    http://localhost/asdf
