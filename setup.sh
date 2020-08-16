#!/usr/bin/env bash
set -o errexit  # Exit on most errors (see the manual)
set -o errtrace # Make sure any error trap is inherited
set -o nounset  # Disallow expansion of unset variables
set -o pipefail # Use last non-zero exit code in a pipeline

DOTS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# check if $HOME/.personal exists
if test ! -f "$HOME/.personal"; then
  echo "Personal file doesn't exist, create first please:"
  exit 1
fi
source $HOME/.personal


# git
# TODO: find a way to include extra git config
cp $DOTS/.gitconfig $HOME/.gitconfig
git config --global user.email $GIT_AUTHOR_EMAIL
git config --global user.name "$GIT_AUTHOR_NAME"

