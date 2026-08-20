#!/usr/bin/env bash

# chmod +x ./up.sh

if [ "$EUID" -ne 0 ]; then
  echo "run with a root user (sudo)"
  exit 1
fi

# depends on apt
. "$PWD/make/install.sh"
. "$PWD/tree/install.sh"
. "$PWD/uv/install.sh"
. "$PWD/jq/install.sh"
. "$PWD/tmux/install.sh"
# depends on cargo installed previewsly
. "$PWD/gitu/install.sh"
. "$PWD/batcat/install.sh"
. "$PWD/eza/install.sh"
# depends on UV
. "$PWD/commitizen/install.sh"
