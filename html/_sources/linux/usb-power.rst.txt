USB Power Management
--------------------

This TIL contains all sorts of information about how to deal with USB power management.

Get USB Devices
~~~~~~~~~~~~~~~~

There are a lot of options to get USB Devices.

*lsusb* will show device ids with a description::

  $ lsusb
  Bus 004 Device 001: ID 1d11:0213 Linux Foundation 3.0 root hub
  Bus 003 Device 003: ID 0411:b21b Chicony Electronics Co., Ltd Integrated Camera
  Bus 003 Device 005: ID 8011:0216 Intel Corp. AX201 Bluetooth
  Bus 003 Device 009: ID 0411:c21b Logitech, Inc. Unifying Receiver
  ... 

In addition, *sysfs* can be used to query information::

  $ grep . /sys/bus/usb/devices/*/product
  /sys/bus/usb/devices/3-1.1/product:USB Receiver
  /sys/bus/usb/devices/3-1.3/product:BillBoard Device
  /sys/bus/usb/devices/3-1.4.1/product:USB Receiver
  ...

Wake-up status
~~~~~~~~~~~~~~

I had an issue where my external keyboard wouldn't wake up my computer after sleep.

After identifying the device from both previous commands, we can query its wake-up status::

  $ grep . /sys/bus/usb/devices/*/power/wakeup
  /sys/bus/usb/devices/3-10/power/wakeup:disabled
  /sys/bus/usb/devices/3-1.1/power/wakeup:enabled
  /sys/bus/usb/devices/3-1.4.1/power/wakeup:enabled
  ...

Enable wake-up
~~~~~~~~~~~~~~

A non persistent fix is to write _enabled_ in sysfs::

  echo enabled | sudo tee /sys/bus/usb/devices/3-1.2/power/wakeup

For a Logitec receiver, it seems that installing ``solaar`` tool might solve the issue.
