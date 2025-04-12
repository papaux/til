Pip
----

Update dependencies
~~~~~~~~~~~~~~~~~~~~

Every modern software should keep up with dependency versions, and upgrade regularly. ``pip-review``` is one possibility when using pip.

Install::

    pip install pip-review

List all dependencies::

    $ pip-review
    astroid==2.10.0 is available (you have 2.6.6)
    Django==3.2.12 is available (you have 2.2.16)
    ...

Interactive upgrade::

    $ pip-review --interactive
    astroid==2.10.0 is available (you have 2.6.6)
    Upgrade now? [Y]es, [N]o, [A]ll, [Q]uit

An alternative to list all outdated dependencies::

    pip list --outdated
