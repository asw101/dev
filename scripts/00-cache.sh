apt-get update

DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y \
	curl \
	git \
	jq \
	vim \
	tmux \
	tmate \
	zsh \
	sudo \
	openssl \
	gnupg2 \
	docker.io \
	software-properties-common

# neovim unstable
add-apt-repository --yes ppa:neovim-ppa/unstable
apt-get update
apt-get install -y \
	neovim

source scripts/02-rustlang.sh

