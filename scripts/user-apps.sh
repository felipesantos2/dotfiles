#!/usr/bin/env bash

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
