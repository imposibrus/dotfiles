#!/usr/bin/env bash

mkdir -p ~/.config/{fish,nvim} ~/.ssh ~/.vim/colors

ROOT_FILES=(.aliases .gitconfig .tmux.conf .vimrc .config/fish/config.fish .config/nvim/init.vim .config/omf/bundle .config/omf/channel .config/omf/theme .ssh/config .vim/colors/darcula.vim)

for name in "${ROOT_FILES[@]}"
do
   ln -sf ${PWD}/${name} ~/${name}
done
