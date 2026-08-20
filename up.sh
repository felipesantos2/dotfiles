#!/usr/bin/env bash

# chmod +x ./up.sh

if [ "$EUID" -ne 0 ]; then
  echo "run with a root user (sudo)"
  exit 1
fi

apt update

. "$PWD/make/install.sh"
. "$PWD/tree/install.sh"
. "$PWD/uv/install.sh"
. "$PWD/jq/install.sh"


curl https://sh.rustup.rs -sSf | sh

# cargo installed                       11.13 MiB
# clippy installed                        5.13 MiB
# rust-docs installed                       23.00 MiB
# rust-std installed                       29.29 MiB
# rustc installed                       76.05 MiB
# rustfmt installed                        2.37 MiB  
# 
#. "$HOME/.cargo/env"             # For sh/bash/zsh/ash/dash/pdksh
# source "$HOME/.cargo/env.fish"  # For fish
# source "~/.cargo/env.nu"  # For nushell
# source "$HOME/.cargo/env.tcsh"  # For tcsh
# . "$HOME/.cargo/env.ps1"        # For pwsh
# source "$HOME/.cargo/env.xsh"   # For xonsh