venv setup script
-----------------

A shell script to setup a virtualenv. It will automatically:
  * create and initialize the venv if needed
  * update pip tools if needed
  * activate the virtual environment 

.. literalinclude:: venv-setup-script.sh
  :language: BASH


Usage::

    source setup.sh
