devcontainers
-------------

**Connect to the dev container from your regular terminal**

1. Open the command palette and select *Dev Containers: Install Dev Container CLI*.

2. Paste the path in a terminal::

    export PATH=$PATH:$USER/.config/Code/User/globalStorage/ms-vscode-remote.remote-containers/cli-bin

3. Connect to the dev container from your terminal, when in the project folder::

    devcontainer exec --workspace-folder . bash

