Env Vars
-----------

Unset all environment variables matching a pattern::

    unset `env | grep OS_ | egrep -o '^[^=]+'`
