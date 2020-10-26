call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'fatih/vim-go', { 'tag': '*' }

call plug#end()

