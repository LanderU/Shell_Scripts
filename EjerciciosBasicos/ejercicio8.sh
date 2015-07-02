#! /bin/bash

: '
	Realizar un script que traduzca una nota que se introduzca por teclado a la calificación
	correspondiente (Sobresaliente, Notable, Bien, Aprobado, Suspenso). Si la nota no es válida se
	informará al usuario.

'

read -p "introduzca una nota(número enteros): " nota

if [ $nota -le 4 2>/dev/null ];then
	echo "Suspenso"
elif [ $nota -ge 5 2>/dev/null ] && [ $nota -le 6 2>/dev/null ]; then 
	echo "Aprobado"
elif [ $nota -gt 6 2>/dev/null ] && [ $nota -le 7 2>/dev/null ]; then
	echo "Bien"
elif [ $nota -gt 7 2>/dev/null ] && [ $nota -le 8 2>/dev/null ]; then
	echo "Notable"
elif [ $nota -gt 8 2>/dev/null ] && [ $nota -le 10 2>/dev/null ]; then
	echo "Sobresaliente"
else
	echo "Nota invalida"
fi
