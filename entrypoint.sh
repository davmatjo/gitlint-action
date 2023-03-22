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

gitlint "$@" >> $GITHUB_STEP_SUMMARY