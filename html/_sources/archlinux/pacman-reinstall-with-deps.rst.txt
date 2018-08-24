Pacman: reinstall packages and their dependencies from update
---------------------------------------------------------------

In case something went wrong with your last update (disk full while updating, some lost dependencies, update aborted, computer crashed...) you can use the following commands to reinstall all packages with their dependencies.

::

   UPGRADE_DATE=2017-04-24
   PATTERN=[\[]${UPGRADE_DATE}.*upgraded
   grep -a $PATTERN /var/log/pacman.log | sed -e 's/.*upgraded //' \
    | sed -e 's/ (.*)$//' | xargs -n1 pactree -u | sort | uniq | \
    xargs sudo pacman -S
   
   
Some details about the command:


- ``UPGRADE_DATE`` put here the date when you did the upgrade
- ``grep -a`` because my /var/log/pacman.log was considered as binary file by grep
- ``pactree`` is used to get the list of dependencies from a package (might take some time depending on the update size)
- ``sort`` and ``uniq`` because we get the dependencies of all packages, so we filter


