" Note we need to install these plugins using PlugInstall command before using them.

call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'jpalardy/vim-slime'
call plug#end()

lua << EOF
require'lspconfig'.gopls.setup{}
require'lspconfig'.rust_analyzer.setup{}
EOF

set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype go setlocal omnifunc=v:lua.vim.lsp.omnifunc

" some shortcuts
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

set completeopt=menuone,noinsert,noselect

lua << EOF
local on_attach_vim = function(client)
  require'completion'.on_attach(client)
end
require'lspconfig'.gopls.setup{on_attach=on_attach_vim}
EOF

let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_enable_underline = 0
let g:diagnostic_auto_popup_while_jump = 1
let g:diagnostic_insert_delay = 1

colorscheme gruvbox8_hard

set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

