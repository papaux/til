tmux cheatsheet
---------------

A tmux cheatsheet based on my needs / findings and based on my config.

Session
~~~~~~~~~~~~~~

- ``tmux new -s session_name``: creates a new tmux session named session_name
- ``tmux attach -t session_name``: attaches to an existing tmux session named session_name
- ``tmux switch -t session_name``: switches to an existing session named session_name
- ``tmux list-sessions``: lists existing tmux sessions
- ``tmux detach (prefix + d)``: detach the currently attached session

Windows
~~~~~~~~~~~~~~

- ``tmux new-window (prefix + c)``: create a new window
- ``tmux select-window -t :0-9 (prefix + 0-9)``: move to the window based on index
- ``tmux rename-window (prefix + ,)``: rename the current window

Panes: Actions
~~~~~~~~~~~~~~~~~~

- ``tmux split-window (prefix + |)``: splits the window into two vertical panes
- ``tmux split-window -h (prefix + -)``: splits the window into two horizontal panes
- ``tmux swap-pane -[UDLR] (prefix + { or })``: swaps pane with another in the specified direction
- ``tmux select-layout even-vertical (prefix + Alt+2)``: split panes evenly, vertical
- ``tmux select-layout even-horizontal (prefix + Alt+1)``: split panes evenly, horizontal
- ``tmux resize-pane -Z (prefix + z)``: toggle pane zoom
- ``(prefix + !)``: convert pane into a window
- ``:setw synchronize-panes (prefix + S)``: synchronize panes

Panes: Select
~~~~~~~~~~~~~~~~~~

- ``tmux select-pane -[UDLR]``: selects the next pane in the specified direction
- ``tmux select-pane -t :.+``: selects the next pane in numerical order
- ``(prefix + q)``: show pane numbers
- ``(prefix + q 0..9)``: switch/select pane by number

Misc
~~~~~~~~~~~~~~~~

- ``:setw synchronize-panes (prefix + S)``: keyboard input is sent to all panes

Copy Mode
~~~~~~~~~~~~~~~~

- ``(prefix + [)``: enter copy mode
- ``/``: search forward
- ``?``: search backward
- ``n``: next keyword occurance
- ``N``: previous keyword occurance
- ``Spacebar``: start selection
- ``Esc``: clear selection
- ``Enter``: copy selection
