apt-get update

DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

apt-get install -y \
	curl \
	git \
	jq \
	vim \
	emacs \
	tmux \
	zsh \
	sudo \
	openssl \
	gnupg2 \
	docker.io \
	build-essential \
	software-properties-common

source scripts/02-rustlang.sh

