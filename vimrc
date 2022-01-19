set nocompatible
set laststatus=2
set backspace=indent,eol,start
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
set number
set mouse=a
imap jj <Esc>

filetype off    " Required

filetype plugin on
filetype plugin indent on " Required

" Tabularize - Install
" git clone https://github.com/godlygeek/tabular.git ~/.vim/pack/plugins/start/tabular
" Tabulerize - Use
" :Tabularize /<pattern>
" e.g.: :<, >Tabularize /= to tabularize on '=' tokens

" FZF - Install
" git clone https://github.com/junegunn/fzf.git ~/.vim/pack/packages/start/fzf
" git clone https://github.com/junegunn/fzf.vim.git ~/.vim/pack/packages/start/fzf.vim

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'below split',
  \ 'ctrl-v': 'below vsplit' }

" Avoids C-* messing with FZF when it's active
nmap <silent> <C-J> <C-W>j
nmap <silent> <C-K> <C-W>k
nmap <silent> <C-L> <C-W>l
nmap <silent> <C-H> <C-W>h
"nmap <silent> <C-H> <C-W>h<c-W>_
"nmap <silent> <C-L> <C-W>l<c-W>_


nnoremap <silent> <C-n> :FZF<CR>

" Highlight column 120 (color set here because most themes don't specify it)
set colorcolumn=120
hi ColorColumn ctermbg=grey guibg=#404040
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Use the + buffer (system clipboard) by default when yanking
" verify that +xterm_clipboard is active with `vim --version`
" if not, use `sudo apt-get installl vim-gui-common` on Ubuntu
set clipboard=unnamedplus
