#!/usr/bin/env bash


if [ "$(whoami)" != root ]; then
   echo "para apps do sistema (apt) use o root user (sudo)"
   exit 1
fi

apps=(make, tree, jq, tmux, git, batcat, fzf, ripgrep)

app_already_installed() {
    echo $(type -t $1) # file or empty
}

install_or_update() {
    # $1, $2
    if [ $1 = "file" ]; then
        echo -e "\n |-------------------------------------------| \n"
        echo -e "   app [$2] já existe, vamos atualizá-lo \n"
        echo -e "   [run]: apt install -y --only-upgrade $2"
        echo -e "\n |-------------------------------------------| \n"

        apt install -y --only-upgrade $2 2>> errors.txt
    else
        echo "app [$2] não existe, vamos instalá-lo"
        apt install -y $2 2>> errors.txt
    fi
}


echo -e "\n |--------------------START-----------------------| \n"
for item in "${apps[@]}"; do
    install_or_update $(app_already_installed make) make
done
echo -e "\n |---------------------END------------------------| \n"
