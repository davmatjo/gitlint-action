#!/bin/bash

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
git config --global --add safe.directory /github/workspace

output=$(gitlint "$@" 2>&1)

echo "$output" >> $GITHUB_STEP_SUMMARY