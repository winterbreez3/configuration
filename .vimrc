" General Stuff

syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab
set ai
set number
set hlsearch
set ruler
set mouse=a

highlight Comment ctermfg=DarkGreen

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'joshdick/onedark.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

" Custom leader

let mapleader=","
map <leader>f :Goyo \| set linebreak<CR>
map <leader>o :setlocal spell! spelllang=en_us<CR>
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>t :LLPStartPreview<CR>
map <leader>p :!opout <c-r>%<CR><CR>

" Latex PDF Viewer
let g:livepreview_previewer = 'zathura'
