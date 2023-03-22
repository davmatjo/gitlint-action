
echo "okay"
echo "$1"
echo "okay2"
echo "$2"
echo "$3"
echo "$@"
echo "$*"
git config --global --add safe.directory /github/workspace
gitlint "$@"