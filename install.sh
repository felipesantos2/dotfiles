#!/usr/bin/env bash

# https://www.redhat.com/pt-br/blog/error-handling-bash-scripting
# alias ls="eza --oneline --long --all --header --git" for gitu . "$HOME/.cargo/env"
# https://www.cyberciti.biz/faq/find-linux-distribution-name-version-number/
# https://www.vivaolinux.com.br/topico/Shell-Script/Executar-um-script-e-chamar-outro-como-root/
# https://www.shellscript.sh/loops.html
# AWK

set -e

# shellcheck disable=SC2034  # Unused variables left for readability
input_args=(u s U S '-u' '-s' '-U' '-S')
# shellcheck disable=SC2034  # Unused variables left for readability
allow_distros=('ubuntu' 'pop-os')

get_args() {
    if [ "$1" = '' ]; then
        echo "Parametro obrigatório não encontrado: user: -u ou system: -s"
        exit 1
    fi
}

load_script_command() {
    source "$PWD/scripts/system-packages.sh"
}

# ex: sudo ./install.sh $1
get_args "$1"

distro=$(awk -F= '$1 == "ID" {print $2}' /etc/os-release | tr -d '"')
if [ "$distro" = "ubuntu" ]; then
    echo -e "Diretorio de Trabalho: $PWD\n"
    echo -e "Distro Linux: $distro\n"
    load_script_command 2>>errors.txt
    exit 0
else
    echo "Distro Desconhecida"
    exit 0
fi
