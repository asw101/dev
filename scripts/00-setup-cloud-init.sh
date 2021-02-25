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

source scripts/01-golang.sh
#source scripts/02-rustlang.sh
source scripts/03-python.sh
#source scripts/04-node.sh
#source scripts/09-vim.sh
#source scripts/09-vim-slime.sh
source scripts/09-oh-my-zsh.sh
source scripts/09-gh.sh
source scripts/09-az.sh
source scripts/09-lazygit.sh
source scripts/09-k9s.sh
source scripts/09-misc.sh

# install vim-plug
# ----------------
mkdir -p ~/.config/nvim
cp scripts/init-basic.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall

cp scripts/init-advanced.vim ~/.config/nvim/init.vim

# update-alternatives
# -------------------
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60

# make tmux work with zsh and nvim
# --------------------------------
echo '# make tmux work with zsh and nvim' >> ~/.zshrc
echo 'alias tmux="SHELL=/usr/bin/zsh TERM=screen-256color-bce tmux"' >> ~/.zshrc

# more tweaks for tmux
echo 'export LC_ALL=en_IN.UTF-8' >> ~/.zshrc
echo 'export LANG=en_IN.UTF-8' >> ~/.zshrc
