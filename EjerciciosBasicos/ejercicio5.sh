#! /bin/bash

: '
	Practica la asignación y acceso a variables asignando cada día de la semana a una variable.
	Muestra el valor de todas las variables con el formato siguiente: “Semana: Lunes Martes
	Miércoles Jueves Viernes Sábado Domingo. Ahora crea la variable SEMANA que contenga la lista
	de días de la semana separados por espacios. Muestra la variable SEMANA.
'
dia1="Lunes"
dia2="Martes"
dia3="Miércoles"
dia4="Jueves"
dia5="Viernes"
dia6="Sábado"
dia7="Domingo"

SEMANA="Semana: $dia1 $dia2 $dia3 $dia4 $dia5 $dia6 $dia6 $dia7"

echo $SEMANA