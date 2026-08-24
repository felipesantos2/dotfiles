#!/usr/bin/env bash

# https://www.redhat.com/pt-br/blog/error-handling-bash-scripting
# alias ls="eza --oneline --long --all --header --git" for gitu . "$HOME/.cargo/env"
# https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/
# https://www.vivaolinux.com.br/topico/Shell-Script/Executar-um-script-e-chamar-outro-como-root/
# https://www.shellscript.sh/loops.html

set -e

# distro="$(uname -n)"

distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release | tr -d '"')
if [ "$distro" = 'ubuntu' || "$distro" = 'pop-os' ]; then
    echo -e "Diretorio de Trabalho: $PWD\n"
    echo -e "Distro Linux: $distro\n"
    source "$PWD/scripts/system-packages.sh" 2>>errors.txt
else
    echo "distro desconhecida"
fi
