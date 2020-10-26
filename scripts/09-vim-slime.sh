mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/jpalardy/vim-slime.git ~/.vim/pack/plugins/start

echo 'let g:slime_target = "tmux"' >> ~/.vimrc
echo 'let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}' >> ~/.vimrc

