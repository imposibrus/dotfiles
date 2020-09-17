
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

