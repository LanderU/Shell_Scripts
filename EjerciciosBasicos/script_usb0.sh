#! /bin/bash
red(){
	tput setaf 1


}

revert(){

	tput sgr0
}

if [ "`ifconfig usb0 2>/dev/null`" ]; then
	while [ $(continuar="s")=="s" ]; do
		sudo ifconfig usb0 192.168.7.1
		sleep 5
		if [ "`ifconfig usb0 2>/dev/null`"  ]; then
			continuar="s"
		else
			clear
			red()
			echo "Has desconectado la BBB, salimos"
			revert()
			break
		fi
	done
else
	clear
	red
	echo "¡Advertencia!"
	echo "--------------"
	echo "No has conectado la BBB"
	revert
fi
