curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp scripts/09-vim-1.vimrc ~/.vimrc
cp scripts/09-vim-2-coc-settings.json ~/.vim/coc-settings.json
mkdir -p /root/.config/coc/

vim +PlugInstall +qall

vim '+CocInstall -sync coc-python' +qall

#vim +GoInstallBinaries

echo 'set number' >> ~/.vimrc
echo 'map <C-n> :NERDTreeToggle<CR>' >> ~/.vimrc
echo 'nnoremap <C-p> :<C-u>FZF<CR>' >> ~/.vimrc

