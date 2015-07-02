#! /bin/bash

: '
	Realizar un script que traduzca una nota que se introduzca por teclado a la calificación
	correspondiente (Sobresaliente, Notable, Bien, Aprobado, Suspenso). Si la nota no es válida se
	informará al usuario.

'

read -p "introduzca una nota(número enteros): " nota

if [ $nota -le 4 ];then
	echo "Suspenso"
elif [ $nota -ge 5 ] && [ $nota -le 6 ]; then 
	echo "Aprobado"
elif [ $nota -gt 6 ] && [ $nota -le 7 ]; then
	echo "Bien"
elif [ $nota -gt 7 ] && [ $nota -le 8 ]; then
	echo "Notable"
elif [ $nota -gt 8 ] && [ $nota -le 10 ]; then
	echo "Sobresaliente"
fi
