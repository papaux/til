Housekeeping
------------

Delete all data points older than 30 days (**warning**: this deletes from all measurements!)::

  use mydb
  DELETE WHERE time < now()-30d
