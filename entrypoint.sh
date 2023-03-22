#!/bin/sh

ARGS=()

while [[ $# -gt 0 ]]; do
  if [ -z "$2" ]
  then
    shift
    shift
  else
    ARGS+=("$1")
    shift
  fi
done

set -- "${ARGS[@]}"


echo "okay"
echo "$1"
echo "okay2"
echo "$2"
echo "$3"
echo "$@"
echo "$*"
git config --global --add safe.directory /github/workspace
gitlint "$@"