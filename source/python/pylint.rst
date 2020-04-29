pylint
------

Pylint is a widely used linter for Python.

Configuration
~~~~~~~~~~~~~

Create a template configuration::

  pylint --generate-rcfile > .pylintrc

Disable some of the levels::

  # First step: only Error (disable Warning, Convention and Refactor)
  disable=C,R,W

