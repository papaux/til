ENTRYPOINT and CMD
-------------------

CMD vs ENTRYPOINT
~~~~~~~~~~~~~~~~~

**CMD**::

  CMD ["/bin/ping", "-c", "3", "localhost"]

- Easy to override: use for general purpose images

**ENTRYPOINT**::

  CMD ["/bin/ping", "-c", "3", "localhost"]

- Not made to be overridden: use for specific applications

**CMD and ENTRYPOINT**::

  ENTRYPOINT ["/bin/ping", "-c", "3"]
  CMD ["localhost"]

- CMD is appended to ENTRYPOINT
- Specifies the executable with ENTRYPOINT and the arguments with CMD
- The CMD arguments can be overridden by the user of your container
- Always use the **exec form** when combining both


Shell vs. Exec
~~~~~~~~~~~~~~

With the **shell form**, docker will invoke a shell and pass the specified commands to it::

  CMD ping localhost

This will be executed as `/bin/sh -c 'ping localhost'` by docker.

Consequences of the shell form:
- the process with PID 1 is the shell and not your application
- POSIX signals will be sent to the shell and not forwarded to your application
- the container needs to provide a shell at `/bin/sh`
- variable expansion will happen as you would expect

With the **exec form**, docker executes your commands directly in the container, without starting a shell::

  CMD ["/bin/ping", "localhost"]

Consequences of the exec form:
- your process is the PID 1, receiving all signals
- no shell needed in the container
- your command is interpreted as is, and there is **no variable expansion** (since there is no shell)
