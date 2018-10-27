#!/bin/bash

main() {
	echo "Escolha uma opção: "
	echo "1 - Limpar a lixeira"
	read option
	case $option in
	"1")
	clear trash-path
	;;
esac
}

clear() {
	echo "Realizando limpeza ..."
	path=""${HOME}/.local/share/Trash/files""
	cd "$path"
	for file in * 
	do
		rm -rf "$file"
	done
	echo "Finalizado"
}

main