Resource usage per app
----------------------

This TIL will not be exactly a consice writing. I aim to list tools that can be used to find which application is using (to not say monopolizing) your system resource.

The tools will be regrouped in categories, one for each system resource type. The list will keep growing everytime I discover (or use) a tool that is worse sharing! Of course it will be command line tools only :-)

Network
~~~~~~~~

The best tool to show which application is sending which amount of data is `nethogs`

::

  nethogs


The result is self-describing:

::

  NetHogs version 0.8.1

    PID USER     PROGRAM                          DEV        SENT      RECEIVED       
  10364 john     /usr/share/spotify/spotify       tun0       3.707      40.496 KB/sec
   9162 john     /usr/lib/gvfs/gvfsd-http         tun0       0.454       2.342 KB/sec
   8608 john     firefox                          tun0       0.000       0.000 KB/sec
   9398 john     thunderbird                      tun0       0.000       0.000 KB/sec
   8220 john     dropbox                          tun0       0.000       0.000 KB/sec
  10238 john     /usr/share/spotify/spotify       tun0       0.000       0.000 KB/sec
   8224 john     /usr/bin/owncloud                tun0       0.012       0.000 KB/sec
      ? root     unknown TCP                                 0.000       0.000 KB/sec

  TOTAL                                                      4.173      42.838 KB/sec 
