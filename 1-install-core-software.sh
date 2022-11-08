#!/usr/bin/env bash

set -e

apt_softwares=(
    "git"
    "curl"
    "wget"
    "build-essential"
    "zip"
    "unzip"
    "vim"
    "gcc"
    "libgmp-dev"
    "python3"
    "opam" # ocaml
)

flatpak_softwares=(
    "com.google.Chrome"
    "com.spotify.Client"
    "us.zoom.Zoom"
    "com.slack.Slack"
    "com.discordapp.Discord"
    "md.obsidian.Obsidian"
    "com.obsproject.Studio"
)

for asw in "${apt_softwares[@]}"; do
    sudo apt-get install -y $asw
done

for fsw in "${flatpak_softwares[@]}"; do
    flatpak install -y --noninteractive flathub $fsw
done

# haskell: ghcup
if ! command -v ghcup &> /dev/null
then
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
