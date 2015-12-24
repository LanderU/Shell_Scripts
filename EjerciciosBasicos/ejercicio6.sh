#! /bin/bash

: '
	Programa que imprima en pantalla el contenido de un fichero de datos, o el contenido de todos
	los ficheros de un directorio dependiendo de si el parámetro que se le pasa es fichero o
	directorio. En cualquier otro caso se informará al usuario de que no es ni fichero ni directorio.

'

read -p "Escriba el archivo [ruta] o directorio del que se quiere ver el contenido: " archfiche

if test -d "$archfiche"
 then
	echo `ls $archfiche`
elif test -f "$archfiche" 
  then
		echo `cat $archfiche`

	else
		echo "Lo que has introducido no es ni un fichero ni un archivo"
fi
