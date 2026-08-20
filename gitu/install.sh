#!/usr/bin/env bash


# cargo and rust
# https://doc.rust-lang.org/book/ch01-01-installation.html
curl https://sh.rustup.rs -sSf | sh

sleep 2

#https://github.com/altsem/gitu/blob/master/docs/installing.md
cargo install gitu --locked
# Installing /home/$USER/.cargo/bin/gitu
# Installed package `gitu v0.43.0` (executable `gitu`)
