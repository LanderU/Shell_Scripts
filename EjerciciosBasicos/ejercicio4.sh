#! /bin/bash

: '
	Diseñar un script que sume todos los números que se leen. Mostrará un
	mensaje que diga: “La suma de los contador números indicados es: resultado”, dónde contador es la cantidad de
	números pasados y resultado, la suma de todos ellos.

'

opcion="si"
while [ $opcion != "no" ]; do
	read -p "Escriba el número a sumar: " numero
	resultado=`expr $resultado + $numero`
	read -p "Continuar¿? " opcion
	contador=`expr $contador + 1`
done

echo "La suma de los $contador números es: $resulatado"
