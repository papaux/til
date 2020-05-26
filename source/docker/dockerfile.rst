Dockerfile Best Practices
-------------------------

Source: https://kapeli.com/cheat_sheets/Dockerfile.docset/Contents/Resources/Documents/index

FROM
~~~~

Select the source image.

Usage:

- `FROM <image>`
- `FROM <image>:<tag>`
- `FROM <image>@<digest>`
- `FROM <image> as <name>`

Information:

- `FROM` must be the **first non-comment instruction** in the Dockerfile.
- `FROM` can appear multiple times in order to create multiple images.
- The `tag` or `digest` values are optional. If omitted latest is assumed by default.
- The `as <name>` directive is used in case of multi-stage build.

MAINTAINER
~~~~~~~~~~

Set the Author field of the generated images.

Usage:

- `MAINTAINER <name>`

RUN
~~~

Usage:

- `RUN <command>` (shell form, the command is run in a shell, by default `/bin/sh -c`)
- `RUN ["<executable>", "<param1>", "<param2>"]` (exec form)

Information:

- The exec form avoids shell string munging.
- The exec form allows a base image to not contain a shell executable.
- The default shell for the shell form can be changed using the `SHELL` command.
- Normal shell processing does not occur when using the exec form. For example, RUN ["echo", "$HOME"] will not do variable substitution on $HOME.

CMD
~~~

`CMD` aims to provide defaults for an executing container.

Usage:

- `CMD ["<executable>","<param1>","<param2>"]` (exec form, this is the preferred form)
- `CMD ["<param1>","<param2>"]` (as default parameters to ENTRYPOINT)
- `CMD <command> <param1> <param2>` (shell form)

Information:

- It may include an executable. If omitted, an `ENTRYPOINT` instruction must be specified.
- There can only be one `CMD` instruction in a Dockerfile. Only the last `CMD` will take effect.
- If `CMD` is used to provide default arguments for the `ENTRYPOINT` instruction, both instructions should be specified with the JSON array format.
- If the user specifies arguments to docker run, this overrides the defaults specified in `CMD`.
- Normal shell processing does not occur when using the exec form. For example, `CMD ["echo", "$HOME"]` will not do variable substitution on `$HOME`.

LABEL
~~~~~

The LABEL instruction adds metadata to an image.

Usage:

- `LABEL <key>=<value> [<key>=<value> ...]`

Information:

- To include spaces within a `LABEL` value, use quotes and backslashes as you would in command-line parsing.
- Labels are additive including `LABEL`s in `FROM` images.
- If Docker encounters a label/key that already exists, the new value overrides any previous labels with identical keys.
- To view an image's labels, use the docker inspect command. They will be under the "Labels" JSON attribute.

EXPOSE
~~~~~~

Informs Docker that the container listens on the specified network port(s) at runtime.

Usage:

- `EXPOSE <port> [<port> ...]`

Information:

- `EXPOSE` does not make the ports of the container accessible to the host.

ENV
~~~

Sets environment variable `<key>` to the value `<value>`.

Usage:

- `ENV <key> <value>`
- `ENV <key>=<value> [<key>=<value> ...]`

Information:

- The value will be in the environment of all “descendant” Dockerfile commands and can be replaced inline as well.
- The environment variables set using `ENV` will persist when a container is run from the resulting image.
- The first form will set a single variable to a value with the entire string after the first space being treated as the <value> - including characters such as spaces and quotes.

ADD
~~~

Copies new files, directories, or remote file URLs from `<src>` and adds them to the filesystem of the image at the path `<dest>`.

Usage:

- `ADD <src> [<src> ...] <dest>`
- `ADD ["<src>", ... "<dest>"]` (this form is required for paths containing whitespace)

Information:

- `<src>` may contain wildcards and matching will be done using Go’s filepath.Match rules.
- If `<src>` is a file or directory, then they must be relative to the source directory that is being built (the context of the build).
- `<dest>` is an absolute path, or a path relative to `WORKDIR`.

COPY
~~~~

Copies new files or directories from `<src>` and adds them to the filesystem of the image at the path `<dest>`.

Usage:

- `COPY <src> [<src> ...] <dest>`
- `COPY ["<src>", ... "<dest>"]` (this form is required for paths containing whitespace)

Information:

- `<src>` may contain wildcards and matching will be done using Go’s filepath.Match rules.
- `<src>` must be relative to the source directory that is being built (the context of the build).
- `<dest>` is an absolute path, or a path relative to `WORKDIR`.
- If `<dest>` doesn’t exist, it is created along with all missing directories in its path.

ENTRYPOINT
~~~~~~~~~~

Configure a container that will run as an executable.

Usage:

- `ENTRYPOINT ["<executable>", "<param1>", "<param2>"]` (exec form, preferred)
- `ENTRYPOINT <command> <param1> <param2>` (shell form)

Information:

- Command line arguments to docker run `<image>` will be appended after all elements in an exec form `ENTRYPOINT` and will override all elements specified using `CMD`.
- If using the shell form, `CMD` or run command line arguments are ignored, but the `ENTRYPOINT` will start via the shell. This means the executable will not be PID 1 nor will it receive `UNIX` signals. Prepend `exec` to get around this drawback.
- Only the last `ENTRYPOINT` instruction in the Dockerfile will have an effect.

VOLUME
~~~~~~

Creates a mount point with the specified name, holding externally mounted volumes from native host or other containers.

Usage:

- `VOLUME ["<path>", ...]`
- `VOLUME <path> [<path> ...]`

USER
~~~~~

Sets the user name or `UID` to use for any `RUN`, CMD and ENTRYPOINT instructions that follow it in the Dockerfile.

Usage:

- `USER <username | UID>`

WORKDIR
~~~~~~~

Sets the working directory for any `RUN`, `CMD`, `ENTRYPOINT`, `COPY`, and `ADD` instructions that follow it.

Usage:

- `WORKDIR </path/to/workdir>`

Information:

- It can be used multiple times in the one Dockerfile.
- If a relative path is provided, it will be relative to the path of the previous `WORKDIR` instruction.

ARG
~~~

Defines a **build-time** variable that can be passed using the `--build-arg <varname>=<value>` flag of the `docker build` command.

Usage:

- `ARG <name>[=<default value>]`

Information:

- Multiple variables may be defined by specifying ARG multiple times.
- Build-time variable values are visible to any user of the image with the docker history command => do not use for secrets.
- Environment variables defined using the `ENV` instruction always override an `ARG` instruction of the same name.
- Docker has a set of predefined ARG variables that you can use without a corresponding ARG instruction in the Dockerfile.
  - `HTTP_PROXY` and http_proxy
  - `HTTPS_PROXY` and https_proxy
  - `FTP_PROXY` and ftp_proxy
  - `NO_PROXY` and no_proxy

ONBUILD
~~~~~~~

Adds to the image a trigger instruction to be executed at a later time, when the image is used as the base for another build. The trigger will be executed in the context of the downstream build, as if it had been inserted immediately after the `FROM` instruction in the downstream `Dockerfile`.

Usage:

- `ONBUILD <Dockerfile INSTRUCTION>`

Information:

- Any build instruction can be registered as a trigger.
- Triggers are inherited by the "child" build only. In other words, they are not inherited by "grand-children" builds.
- The `ONBUILD` instruction may not trigger `FROM`, `MAINTAINER`, or `ONBUILD` instructions.

STOPSIGNAL
~~~~~~~~~~

Sets the system call signal that will be sent to the container to exit.

Usage:

- `STOPSIGNAL <signal>`

Information:

- The signal can be a valid unsigned number that matches a position in the kernel’s syscall table, for instance 9, or a signal name in the format `SIGNAME`, for instance `SIGKILL`.

HEALTHCHECK
~~~~~~~~~~~

Tells Docker how to test a container to check that it is still working.

Usage:

- `HEALTHCHECK [<options>] CMD <command> (check container health by running a command inside the container)`
- `HEALTHCHECK NONE (disable any healthcheck inherited from the base image)`

Information:

- Whenever a health check passes, it becomes healthy. After a certain number of consecutive failures, it becomes unhealthy.
- The possible `<options>` values are:
  - `--interval=<duration>` (default: 30s)
  - `--timeout=<duration>` (default: 30s)
  - `--retries=<number>` (default: 3)
- The health check will first run `interval` seconds after the container is started, and then again `interval` seconds after each previous check completes. If a single run of the check takes longer than `timeout` seconds then the check is considered to have failed. It takes `retries` consecutive failures of the health check for the container to be considered unhealthy.
- There can only be one `HEALTHCHECK` instruction in a `Dockerfile`. Only the last `HEALTHCHECK` will take effect.
- <command> can be either a shell command or an exec JSON array.
- The command's exit status indicates the health status of the container.
  - `0: success` - the container is healthy and ready for use
  - `1: unhealthy` - the container is not working correctly
  - `2: reserved` - do not use this exit code
- The first 4096 bytes of stdout and stderr from the `<command>` are stored and can be queried with docker inspect.
- When the health status of a container changes, a `health_status` event is generated with the new status.

SHELL
~~~~~

Set the default shell to be used for the shell form of commands.

Usage:

- `SHELL ["<executable>", "<param1>", "<param2>"]`

Information:

- Each `SHELL` instruction overrides all previous `SHELL` instructions, and affects all subsequent instructions.
- Allows an alternate shell be used such as `zsh`, `csh`, `tcsh`, `powershell`, and others.

