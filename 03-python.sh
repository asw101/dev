echo '# python...'

export DEBIAN_FRONTEND=noninteractive
sudo add-apt-repository --yes ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.9 python3.9-venv python3-pip

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 10
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 20

