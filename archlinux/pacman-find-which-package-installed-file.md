# Pacman: find which package installed a file

You have a file or an application on your system and you want to know which package installed this file.

There is a very simple pacman builtin command:


```
pacman -Qo syndaemon
```

Sample output:
```
/usr/bin/syndaemon is owned by xf86-input-synaptics 1.8.3-2
```

