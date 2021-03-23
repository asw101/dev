#!/usr/bin/env bash
set -euo pipefail

export DEBIAN_FRONTEND=noninteractive

git clone https://github.com/asw101/dev
cd dev/
bash 00-setup-cloud-init.sh | tee -a ../output.txt

echo "00-setup-cloud-init.sh complete!" | tee -a ../output.txt
