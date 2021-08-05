Alias
-------

All sort of useful bash aliases::

  #####
  # Bash power
  #####

  # grep in bash history
  alias gh='history | grep'

  #####
  # System stats / info
  #####

  # show all open ports
  alias ports='sudo netstat -tulanp'

  # a more readable version of free
  alias meminfo='free -m -l -t'

  # a more readable output of mount
  alias mountinfo | column -t 
 
  # get top process eating memory / cpu
  alias psmem='ps aux | sort -nr -k 4 | head -10'
  alias pscpu='ps aux | sort -nr -k 3 | head -10'

iptables::
  #####
  # iptables
  #####

  # shorter command
  alias ipt='sudo /sbin/iptables'
   
  # show rules
  alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
  alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
  alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
  alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'