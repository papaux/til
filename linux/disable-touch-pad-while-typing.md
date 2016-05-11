# Disable touchpad while typing

I have a nice laptop with a big touchpad (Asus UX305) but it is so big that you end up touching it everytime... And it was driving me crazy.

There is a small application that can be run as a daemon and that does exactly what I needed: disable the touchpad while are typing and re-enable it after some configurable delays.

The tool is named `syndaemon` and is part of the `xf86-input-synaptics` package.

Below is a sample command to start it as a daemon with 0.5 seconds delay:

```
syndaemon -d -k -i 0.5s
```

Description of the options:

```
 -d start as a daemon (background process)
 -k ignore modifier keys when monitoring keyboard activity.
 -i how many seconds to wait after the last key press before enabling the touchpad.  (default is 2.0s).
```



