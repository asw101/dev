#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

git clone https://github.com/asw101/dev
cd dev/
git checkout dev
bash 00-setup.sh | tee -a ../output.txt
echo "00-setup.sh complete!" | tee -a ../output.txt
