#! /bin/bash


if [ "`ifconfig usb0 2>/dev/null`" ]; then
	while [ $(continuar="si")=="si" ]; do
		sudo ifconfig usb0 192.168.7.1
		sleep 5
		if [ "`ifconfig usb0 2>/dev/null`"  ]; then
			continuar="si"
		else
			echo "Has desconectado la BBB, salimos"
			break
		fi
	done
else
	echo "¡Advertencia!"
	echo "--------------"
	echo "No has conectado la BBB"
fi
