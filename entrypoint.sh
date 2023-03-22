#!/bin/bash

# Build args array by ignoring any empty arguments
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

# Reset args environment
set -- "${ARGS[@]}"

# Allow git to ignore user discrepancy in workspace directory
git config --global --add safe.directory /github/workspace

# Capture gitlint code, stdout, stderr
out=$(gitlint "$@" 2> .err)
code=$?
err=$(<.err)

# Output check summary
if [ $code -ne 0 ]
then
  echo "### :x: Gitlint Check Failed" >> $GITHUB_STEP_SUMMARY
  echo "$err" >> $GITHUB_STEP_SUMMARY
else
  echo "### :fire: Gitlint Passed" >> $GITHUB_STEP_SUMMARY
fi

echo "::debug::GITLINT STDOUT: $out"
echo "::debug::GITLINT STDERR: $err"
exit $code
