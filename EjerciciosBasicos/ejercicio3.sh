#! /bin/bash

: '
	Diseñar un script que pasándole dos argumentos los sume si el primero es menor que el segundo
	y los reste en caso contrario.

	Recordatorio

	-eq: Igual a
	-ne: Distinto de
	-lt: Menor que
	-le: Menor o igual que
	-gt: Mayor que
	-ge: Mayor o igual que

'

if [ $1 -lt $2 ]; then
	echo "Sumamos= $(($1+$2))"
else 
	echo "Restamos= $(($1-$2))"
fi