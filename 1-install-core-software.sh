#!/usr/bin/env bash

set -e

apt_softwares=(
    "apt-transport-https"
    "openssl"
    "software-properties-common"
    "python-software-properties"
    "git"
    "curl"
    "wget"
    "build-essential"
    "zip"
    "unzip"
    "vim"
    "gcc"
    "opam" # ocaml
)

flatpak_softwares=(
    "com.google.Chrome"
    "com.visualstudio.code"
    "com.spotify.Client"
)

for asw in "${apt_softwares[@]}"; do
    sudo apt-get install -y $asw
done

for fsw in "${apt_softwares[@]}"; do
    sudo flatpak install -y --noninteractive $fsw
done

# haskell: ghcup
if ! command -v ghcup &> \dev\null
then
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
