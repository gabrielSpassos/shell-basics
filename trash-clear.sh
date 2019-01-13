#!/bin/bash

main() {
	echo "Escolha uma opção: "
	echo "1 - Limpar a lixeira"
	echo "2 - Listar arquivos da lixeira"
	read option
	case $option in
	"1")
	clear trash-path
	;;
	"2")
	list
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

list() {
	echo "Arquivos da lixeira: "
	path=""${HOME}/.local/share/Trash/files""
	cd "$path"
	ls 
}

main