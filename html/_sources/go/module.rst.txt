Module and dependencies
-----------------------

Summary of the Go tooling around module and dependencies handling.

Project Files
~~~~~~~~~~~~~

* **go.mod**: lists dependencies of a module
* **go.sum**: contains hash of module dependencies that will be verified

Dependencies
~~~~~~~~~~~~

* ``go mod tidy``: updates the go.mod file by adding missing dependencies, removing not needed ones.

Vendoring
~~~~~~~~~

A special mode where all dependencies are stored in the project folder (in a ``vendor`` directory) instead of be downloaded from the internet.

* ``go mod vendor``: creates a ``vendor`` directory with a copy of all dependencies.

