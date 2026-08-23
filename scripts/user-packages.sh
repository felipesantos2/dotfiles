#!/usr/bin/env bash

set -e

if [ "$(whoami)" = root ]; then
    echo "o user root não pode executar"
    exit 1
fi

apps=(
    ("uv" "curl -LsSf https://astral.sh/uv/install.sh | sh")
    ("zoxide" "curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh")
    ("zed" "curl -f https://zed.dev/install.sh | sh")
    ("eza" "cargo install eza --locked")
    ("cargo" "curl https://sh.rustup.rs -sSf | sh")
    ("gitu" "cargo install gitu --locked")
    ("nvm" "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.7/install.sh | bash")
    ("cz" "uv tool install commitizen && uv tool upgrade commitizen")
    ("fd" "cargo install fd-find")
    ("eza" "cargo install eza --locked")
)


app_already_installed() {
	"$(type -t "$1")" # file or empty
}

install_or_update() {
    # $1, $2
    if [ "$1" = "file" ]; then
        echo -e "\n |-------------------------------------------| \n"
        echo -e "   app [$2] já existe, vamos atualizá-lo \n"
        echo -e "   [run]: source '$PWD/user/$2.sh'"
        echo -e "\n |-------------------------------------------| \n"
    else
        echo "app [$2] não existe, vamos instalá-lo"
        apt install -y "$2" 2>>errors.txt
    fi
}

# echo -e "\n\n $(whoami)"

# echo $($apps[1])

# echo -e "\n |--------------------START-----------------------| \n"
# for item in "${apps[@]}"; do
#     install_or_update $(app_already_installed uv) uv
# done
# echo -e "\n |---------------------END------------------------| \n"
