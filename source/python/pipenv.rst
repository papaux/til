pipenv
------

Pipenv is an advanced dependency management tool for python.
It manages virtual envs and packages, tracking the exact version of all installed dependencies.

Setup new project
~~~~~~~~~~~~~~~~~

1. Install ``pipenv`` globally and create an alias

::

  pip install --user pipenv
  alias pipenv=$HOME/.local/bin/pipenv

2. Install a package to get the ``Pipfile`` and ``Pipfile.lock`` files created

::

  pipenv install requests

3. Activate the created virtual env

::

  pipenv shell

4. Run a command inside the virtualenv

::

  pipenv run <command>

Install from ``Pipefile``
~~~~~~~~~~~~~~~~~~~~~~~~~

To install dependencies form an existing repository, use::

  pipenv install

Get information
~~~~~~~~~~~~~~~

Get the path of the created venv::

  pipenv --venv
