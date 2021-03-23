echo '# neovim'

sudo add-apt-repository --yes ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y \
	neovim

# clean
# -----

rm -rf ~/.config/nvim/ ~/.local/share/nvim/autoload/plug.vim ~/.local/share/nvim/plugged/*

# install vim-plug
# ----------------
mkdir -p ~/.config/nvim
cp 10-neovim/init-basic.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall

cp 10-neovim/init-advanced.vim ~/.config/nvim/init.vim

# update-alternatives
# -------------------
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60

