#!/usr/bin/env bash
pacote=$(dpkg --get-selections | grep "figlet" )
	if [ -n "$pacote" ] ;then
		echo
	else
		apt-get install figlet -qq > /dev/null
	fi

#FUNÇÃO DE CREAR EL LOGO DE LA EMPRESA
Logo_Empresa(){
	clear
		echo -e " \e[1;31m ======================================================================== \e[m ";
		figlet -c "$EMPRESA"
		echo -e " \e[1;31m ======================================================================== \e[m ";
		echo ""
		echo ""
	return
}


clear
echo -e "carregando..."
sleep 1
DEBIAN_FRONTEND=noninteractive
export DEBIAN_FRONTEND
EMPRESA=SYSTEC



clear

echo""
echo""
echo -e " \e[1;31m ======================================================================== \e[m ";
echo ""
Logo_Empresa
echo ""
echo -e " \e[1;31m ======================================================================== \e[m ";
echo ""
echo ""

