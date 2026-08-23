#!/usr/bin/env bash

# https://www.redhat.com/pt-br/blog/error-handling-bash-scripting
# alias ls="eza --oneline --long --all --header --git" for gitu . "$HOME/.cargo/env"
# https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/
# https://www.vivaolinux.com.br/topico/Shell-Script/Executar-um-script-e-chamar-outro-como-root/
# https://www.shellscript.sh/loops.html

set -e

distro="$(uname -n)"
if [ "$distro" = 'pop-os' ]; then
    source "$PWD/scripts/system-packages.sh" 2>>errors.txt
elif [ "$distro" = 'ubuntu' ]; then
    echo "Diretorio de trabalho: $PWD"
    echo "Distro Linux: $distro"
else
    echo "distro desconhecida"
fi
