#!/usr/bin/env bash

mkdir -p ~/.config/{fish/functions,htop,omf,bat,ranger} ~/.ssh/{,control} ~/.vim/{colors,syntax}

ROOT_FILES=(
	.aliases .gitconfig .gitattributes .tmux.conf .vimrc
	.config/fish/config.fish .config/fish/functions/ranger.fish .config/htop/htoprc .config/omf/bundle .config/omf/channel .config/omf/theme
	.config/bat/config .config/ranger/rc.conf .config/ranger/scope.sh .config/ranger/rifle.conf .config/ranger/commands.py
	.ssh/config
	.vim/colors/darcula.vim .vim/syntax/nginx.vim .vim/filetype.vim
)

for name in "${ROOT_FILES[@]}"
do
	ROOT_FILE_PATH="$(readlink ~/${name})"
	CURRENT_FILE_PATH="${PWD}/${name}"

	if [[ -L ~/${name} ]] && [[ ${ROOT_FILE_PATH} = ${CURRENT_FILE_PATH} ]]; then
		echo "~/${name} already linked, skip"
		continue
	elif [[ -e ~/${name} ]]; then
		mv ~/${name} ~/${name}.back
		echo "~/${name} moved to ~/${name}.back"
	fi

	ln -sf ${CURRENT_FILE_PATH} ~/${name}
done
