#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

git clone https://github.com/asw101/dev
cd dev/
sudo bash scripts/00-setup-cloud-init.sh | tee -a ../output.txt
bash scripts/09-vm.sh | tee -a ../output.txt

echo "cloud-init.sh complete!" | tee -a ../output.txt
