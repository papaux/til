Oh My Zsh Aliases
------------------

List of my mostly used omz git aliases.

Refer to the official `plugin documentation <https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git>`_ for the full list of aliases.

Checkout

* ``gcm``: git checkout [main/master] branch
* ``gcd``: git checkout [develop] branch
* ``gcb``: git checkout -b

Pull

* ``gfa``:  git fetch --all --prune (fetch all remotes and delete references of remote-tracking references that no longer exist in remote)
* ``glum``: git pull upstream [main/master]

Commit

* ``gcmsg``: git commit --message

Diff

* ``gd``: git diff
* ``gdca``: git diff --cached

Info

* ``gbr``: git branch --remote

Clean

* ``gpristine``:  git reset --hard && git clean -dffx

