#!/usr/bin/env bash

set -e

echo "[pre-install]"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

echo "[install]"
bash 1-install-core-software.sh
# bash 2-install-extra-software.sh

echo "[post-install]"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

echo "[installation success]"
