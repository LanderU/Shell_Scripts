#! /bin/bash

#Script que compruebe si un número está entre un máximo y un mínimo (lo pediremos al usuario).
#Comparadores de números
: '
	-eq: Igual a
	-ne: Distinto de
	-lt: Menor que
	-le: Menor o igual que
	-gt: Mayor que
	-ge: Mayor o igual que
'
read -p "Escriba un número: " numero
printf "El rango que vamos a comprobar está entre 0-100\n"
if [ $numero -ge 0 ] && [ $numero -le 100 ]; then
	printf " $numero, está entre el rango de 0-100\n"
else
	printf "$numero, no está en el rango de 0-100\n"
fi

