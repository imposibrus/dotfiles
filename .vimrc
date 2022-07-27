
set mouse=
syntax on
colorscheme darcula

" disable auto-copy on select
set guioptions-=a
set guioptions-=A
set guioptions-=aA

" allow backspace to delete
set backspace=indent,eol,start

" map Alt+Arrows to move by words
map <Esc>b <S-Left>
map <Esc>f <S-Right>
inoremap <Esc>b <C-o>b
inoremap <Esc>f <C-o>w

set ruler

" scroll to last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" yaml and python indents
autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype python setlocal tabstop=2 shiftwidth=2 expandtab

