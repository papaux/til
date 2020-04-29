Color Output
------------

There are several possibilities to color the output of a bash script / command.

`tput`
~~~~~~

Define shell variables::

  red=`tput setaf 1`
  green=`tput setaf 2`
  reset=`tput sgr0`
  echo "${red}red text ${green}green text${reset}"

Directly in a command output::

  echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"

Do not forget to clear the color with the `tput sgr0` at the end.
