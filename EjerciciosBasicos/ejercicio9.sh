#!/bin/bash

: '
	Script que añade la línea #!/bin/bash al principio del fichero que le pases como parámetro, si
	es que ya no lo tiene.
'
if [ $# -eq 0 ]; then
	echo "Pasar parámetro de la siguiente forma [script] [parametro]"
	exit
else

	cabecera="#!/bin/bash"
	archivo=`sed -n '1p' $1`
	if test $cabecera = $archivo
	then
		echo "Script con la cabezera"
	else		
		`sed -i '1i #!/bin/bash' $1`
		 cat $1
	fi
fi

