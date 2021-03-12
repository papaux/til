#!/usr/bin/env bash

set -Eeuo pipefail
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

usage() {
  cat <<EOF
Usage: $(basename "${BASH_SOURCE[0]}") [-h] -p param_value arg1 [arg2...]

A wonderful script doing XYZ.

Available options:

  -h      Print this help and exit
  -p      Some param description
EOF
}

error_usage_and_exit() {
  echo -e "$1\n" 1>&2
  usage
  exit 1
}

parse_params() {
  param="default"
  while getopts ":hp:" arg; do
    case $arg in
      p) # Specify p value.
	param="${OPTARG}"
        ;;
      h) # Display help.
        usage
        exit 0
        ;;
      \? )
        error_usage_and_exit "ERROR: Invalid option: $OPTARG"
	;;
      : )
        error_usage_and_exit "ERROR: Invalid option: $OPTARG requires an argument"
        ;;
    esac
  done
}

parse_params "$@"

echo "Running script with p=$param"
