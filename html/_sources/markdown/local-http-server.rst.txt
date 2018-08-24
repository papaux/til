Local HTTP server
-----------------

When editing markdown files, you have some editing tools which provides preview mode (e.g. Brackets) but you don't have everything like links between pages, anchors, etc.

We have here two tools:

- grip_ (preferred)
- harp_

.. grip_

grip
~~~~

Grip has more features and serves directly .md files. It is using GitHub markdown API.
It even redirects to README by default and auto refreshes when files are changed on the disk.

Install
^^^^^^^

::

  sudo pip install grip

Serve
^^^^^^

::

  grip 9000

<http://localhost:9000>

.. harp_

harp
~~~~~

Harp is simpler than grip, can be used to make static versions of websites written with markdown but maps the .md files to .html. So no links possible between files.

It is a node module named **harp**.

Install
^^^^^^^^

::

  sudo npm install -g harp


Serve
^^^^^^

::
  
  harp server

<http://localhost:9000>




