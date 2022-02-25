Oh My Zsh
----------

A must have plugin for ``zsh``.

Plugins
~~~~~~~~

Recommended plugins::

    plugins=(git gitfast autojump history web-search sudo jsontools)

**git**

A lot of useful aliases for git commands and aliases.

**gitfast**

A much faster (and better) auto completion for git commands. To be used together with ``git`` plugin

**autojump**

Record visited directories in file system and allows to move to a directory form anywhere.

- ``j [folder]``: jump to [folder] anywhere in the filesystem, as long as it has been visited before

**history**

Easier zsh history manipulation.

- ``h``: prints zsh history
- ``hs [searchterm]``: searches your history with grep
- ``hsi [serachterm]``: same as above but case insensitive.

**web-search**

Perform web search from the terminal.

- ``google reach hooks``: search about react hooks in google

**sudo**

Press escape twice to repeat the last command but with sudo.

**jsontools**

JSON manipulation from command line.

- ``cat data.json | pp_json``: pretty prints json
- ``cat data.json | is_json``: returns true if valid json; false otherwise

Tips
~~~~~

**Reload config**::

    exec zsh
