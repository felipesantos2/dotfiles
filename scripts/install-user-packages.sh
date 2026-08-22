#!/usr/bin/env bash

set -e

if [ "$(whoami)" = root ]; then
   echo "o user root não pode executar"
   exit 1
fi

source "$PWD/scripts/user-apps.sh"

app_already_installed() {
    echo $(type -t $1) # file or empty
}

install_or_update() {
    # $1, $2
    if [ $1 = "file" ]; then
        echo -e "\n |-------------------------------------------| \n"
        echo -e "   app [$2] já existe, vamos atualizá-lo \n"
        echo -e "   [run]: source '$PWD/user/$2.sh'"
        echo -e "\n |-------------------------------------------| \n"
    else
        echo "app [$2] não existe, vamos instalá-lo"
        apt install -y $2 2>> errors.txt
    fi
}

echo -e "\n\n $(whoami)"

# echo $($apps[1])

# echo -e "\n |--------------------START-----------------------| \n"
# for item in "${apps[@]}"; do
#     install_or_update $(app_already_installed uv) uv
# done
# echo -e "\n |---------------------END------------------------| \n"
