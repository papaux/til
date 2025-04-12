cgroup
------

This TIL regroups all useful commands regarding cgroups.

**Change cgroup of current process**

When a new process is started, it inherits the cgroup of its parent. If you start a command from your shell, it will inherit the same cgroup as your shell. You can change the cgroup of your current shell process with this command to have all commands run in another cgroup (in the example, using the system-group cgroup):

::

  echo $$ > /sys/cgroup/system-group/tasks
