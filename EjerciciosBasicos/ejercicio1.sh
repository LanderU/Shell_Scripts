#! /bin/bash

#Script que diga si un número introducido por teclado es par o impar.

echo -n "Introduzca un número: "
read numero
resultado=$(($numero%2))
if [ $resultado -eq 0 ]; then
	echo "$numero, es par"
else
	echo "$numero, es impar"
fi

#También podemos usar para pedir el dato las siguientes opciones

#printf "Escribe un número: \n"
#read numero
#O bien directamente con el read
#read -p "Escriba un número: " numero

: '
	Otra versión del código sin variable intermedia, sería así.

	read -p "Escribe un número: " numero

	if [ $(($numero%2)) -eq 0 ]; then
		echo "$numero es par"
	else
		echo "$numero, es impar"
	fi
'