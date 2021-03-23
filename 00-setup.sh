#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

# bash 00-setup.sh
bash 01-golang.sh
# bash 02-rustlang.sh
bash 03-python.sh
bash 04-node.sh
bash 09-az.sh
bash 09-basic.sh
bash 09-docker.sh
bash 09-gh.sh
bash 09-k9s.sh
bash 09-lazygit.sh
bash 09-neovim.sh
# bash 09-oh-my-zsh.sh
bash 09-pyright.sh
bash 09-tailscale.sh
bash 10-bash.sh
bash 10-git.sh
bash 10-zsh.sh
