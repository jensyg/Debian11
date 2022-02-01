#!/usr/bin/env bash



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
DEBIAN_FRONTEND=noninteractive
export DEBIAN_FRONTEND
EMPRESA=SYSTEC
pacote=$(dpkg --get-selections | grep "figlet" )
	if [ -n "$pacote" ] ;then
		echo
	else
		apt-get install figlet -qq > /dev/null
	fi



clear
echo""
echo""
echo -e " \e[1;31m ======================================================================== \e[m ";
echo ""
figlet -c "$EMPRESA"
echo ""
echo -e " \e[1;31m ======================================================================== \e[m ";
echo ""
echo ""

Logo_Empresa
echo "=========================================================="

while true; do
clear
echo -e " \e[1;31m ======================================================================== \e[m ";
figlet -c "$EMPRESA"
echo -e " \e[1;31m ======================================================================== \e[m ";
echo ""
echo ""
echo "==========================================================
       	Digite o número do componente a ser instalado:
		1 - Obter Informaçoes
		2 - Instalar Samba
		3 - Configurar Samba
		4 - Provisionar Controlador de Dominio
		5 - Conferir Controlador de Domonio
		6 - Configuraçao WINBIND
		0 - Sair
==========================================================="
echo -n "->OPÇÃO:  "

read opcao


if [ -z $opcao ]; then
	echo "ERRO: digite uma opcao"
	read
	exit

fi

case $opcao in
	1)
		#VAMOS OBTER INFORMAÇOES
		Obter_Informacoes
		;;
		
	2)
		#VAMOS INSTALAR SAMBA
		_Instalar_Samba
		;;
		
	3)
		#VAMOS CONFIGURAR SAMBA
		Configurar_Samba
		;;

	4)
		#VAMOS POSISIOAR SAMBA COMO CONTROLADOR DE DOMINIO
		Controlador_de_Dominio
		;;
		
	5)
		#VAMOS CONFERIR CONTROLADOR DE DOMINIO
		Conferir_Controlador_Dominio
		;;
		
	6)
		#VAMOS CONFERIR CONTROLADOR DE DOMINIO
		_Configuracao_Winbind
		;;
	0)
		echo "Saindo..."
		sleep 1
		clear
		exit
		clear
		;;
	*)
		echo
		echo "ERRO: opção inválida"

		echo ;;


esac

done
