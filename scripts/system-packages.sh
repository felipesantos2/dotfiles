#!/usr/bin/env bash

# instala apps do sistema com o apt. ex: apt install git
if [ "$(whoami)" != root ]; then
    echo "para apps do sistema (apt) use o root user (sudo)"
    exit 1
fi

apps=(
    make
    tree
    jq
    tmux
    git
    # batcat
    fzf
    ripgrep
    shellcheck
    shfmt
)

# se file, o app já está instalado
# file or empty
app_already_installed() {
    echo "$(type -t "$1")"
}

# $1 recebe file ou empty
# $2 recebe o app. ex: git, tree
install_or_update() {
    # $1, $2
    if [ "$1" = "file" ]; then
        echo -e "\n |-------------------------------------------| \n"
        echo -e "   app [$2] já existe, vamos atualizá-lo \n"
        echo -e "   [run]: apt install -y --only-upgrade $2"
        echo -e "\n |-------------------------------------------| \n"
        apt install -y --only-upgrade "$2"
    else
        echo -e "\n |-------------------------------------------| \n"
        echo "app [$2] não existe, vamos instalá-lo"
        apt install -y "$2"
        echo -e "\n |-------------------------------------------| \n"
    fi
}

echo -e "\n |--------------------START-----------------------| \n"
for item in "${apps[@]}"; do
    exit=$(app_already_installed "$item")
    install_or_update "$exit" "$item"
done
echo -e "\n |---------------------END------------------------| \n"
