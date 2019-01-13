#!/bin/bash

main() {
	while [ "$option" != "3" ]
	do
	  	echo "Escolha uma opção: "
		echo "1 - Listar arquivos da lixeira"
		echo "2 - Limpar a lixeira"
		echo "3 - Sair da aplicacao"
		read option
		case $option in
		"1")
		list
		;;
		"2")
		clear trash-path
		;;
		esac
	done
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