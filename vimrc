set nocompatible
set laststatus=2
set backspace=indent,eol,start
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
filetype off    " Required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'fatih/vim-go'

let g:vim_markdown_folding_disabled = 1

Bundle 'gmarik/vundle'

filetype plugin indent on " Required

Bundle 'altercation/vim-colors-solarized'

set rtp+=/usr/local/opt/fzf

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'below split',
  \ 'ctrl-v': 'below vsplit' }

nnoremap <silent> <C-n> :FZF<CR>

nmap <silent> <C-J> <C-W>j
nmap <silent> <C-K> <C-W>k
nmap <silent> <C-L> <C-W>l
nmap <silent> <C-H> <C-W>h
"nmap <silent> <C-H> <C-W>h<c-W>_
"nmap <silent> <C-L> <C-W>l<c-W>_

set path=.,/usr/include,,**
set wildmenu
set mouse=a

set number
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" Highlight column 120 (color set here because most themes don't specify it)
set colorcolumn=120
hi ColorColumn ctermbg=grey guibg=#404040
imap jj <Esc>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
