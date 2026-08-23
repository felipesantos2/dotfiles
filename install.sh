#!/usr/bin/env bash

#
# https://www.redhat.com/pt-br/blog/error-handling-bash-scripting
# alias ls="eza --oneline --long --all --header --git" for gitu . "$HOME/.cargo/env"

set -e

distro=$(uname -n)
if [ "$distro" = 'pop-os' ]; then
    echo "Diretorio de trabalho: $PWD"
    echo "Distro Linux: $distro"
    source "$PWD/scripts/install-system-packages.sh" 2>> errors.txt

    su - "felipesantos2" - <<HERE
        source "$PWD/scripts/install-user-packages.sh" 2>> errors.txt
HERE
elif [ "$distro" = 'ubuntu' ]; then
    echo "Diretorio de trabalho: $PWD"
    echo "Distro Linux: $distro"
else
    echo "distro desconhecida"
fi
