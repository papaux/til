Best Practices
---------------

A couple of Bash best practices summarized in a single page.

Note that most of the -o options have a shorter variant. Both are listed on this page.

All-in-one::

    set -exuo pipefail

Exit as soon as one command fails::

    set -e
    set -o errexit

Fail when accessing unset variables::

    set -u
    set -o nounset

Fail when any command from a pipeline fails::

    set -o pipefail

Optional debugging from argument::

    if [[ "${DEBUG-0}" == "1" ]]; then set -o xtrace; fi
    if [[ "${DEBUG-0}" == "1" ]]; then set -x; fi

    # Call with
    DEBUG=1 ./script.sh

Use double brackets `[[ ]]` for conditions::

    [[ 1 < 2 ]] && echo "1 is less than 2"

Why ? It supports `<>`, `&&`, `||`, grouping expressions with `( )`, pattern matching `[[ $name = *c* ]]` and regular expression `[[ $name =~ ^Ali ]]`
