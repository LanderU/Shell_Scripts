#! /bin/bash

: '
	Programa que borre con confirmación todos los ficheros indicados.
'
opcion="si"
while [ $opcion != "no" ]; do
	read -p "Archivo a borrar escriba la ruta: " fichero
	if test -f "$fichero"
		then
		`rm -i $fichero`
	else
		echo "No es un fichero no lo vamos a borrar."
		break
	fi
	read -p "Borrar otro archivo¿?[si/no] " opcion
done