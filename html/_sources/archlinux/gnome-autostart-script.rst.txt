Gnome: autostart script
------------------------

Gnome "Tweak" tool can be used to add existing application to the startup list.
But to add a custom script, you have to follow these steps.

First create a ``.desktop`` file in ``~/.config/autostart``

::
  
  touch ~/.config/autostart/custom.desktop
  
Then add following content, changing the information about your script

::

  [Desktop Entry]
  Name=ux305-customize
  GenericName=Asus UX305 customization
  Comment=Custom configuration specifically for Asus UX305 laptop
  Exec=/data/john/workspace/desktop-scripts/ux305/custom.sh 5
  Terminal=false
  Type=Application
  X-GNOME-Autostart-enabled=true

And that's it! Your script is now visible in *Gnome Tweak Tool* under *Startup Applications*.