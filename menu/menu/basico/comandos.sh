#!/bin/bash
#Script comando basicos
clear
while true
do
echo "***************************************************"
echo "             Menu de comandos basicos"
echo "***************************************************"
echo "1.   Mostrar la fecha y hora "
echo "2.   Mostrar calendario "
echo "3.   Mostrar la ruta actual "
echo "4.   Mostrar el manual de un comando "
echo "5.   ¿Cual es mi IP?"
echo "6.   ¿Cual es mi usuario?"
echo "7.   Cambiar mi contraseña"
echo "8.   Mostrar programas ejecutandose"
echo "9.   Detener programa"
echo "10.  Mostrar informacion del sistema"
echo "11.  Reiniciar/Apagar el sistema"
echo "12.  Salir"
echo "***************************************************"
read opcion
case $opcion in
1)clear
date "+Fecha: %D%nHora: %T"
echo "Pulse una tecla para continuar"
read nada
clear;;
2)clear
echo "Introduce el año que desea ver el calendario:"
read anyo
cal -y $anyo 
echo "Pulsa una tecla para continuar"
read nada
clear;;
3)clear
pwd
echo "Pulsa una tecla para continuar"
read nada
clear;;
4)clear
echo "Introduce el comando del que quiera recibir la ayuda"
read com
man $com
clear;;
5)clear
hostname -I
echo "Pulse una tecla para continuar"
read nada
clear;;
6)clear
whoami
echo "Pulse una tecla para continuar"
read nada
clear;;
7)clear
passwd
clear;;
8)
clear
ps ux
read -p "Pulse una tecla para continuar"
clear
;;
9)
clear
read -p "Introduzca el PID del proceso que quiere detener: " proc
kill $proc

echo "Proceso $proc detenido"
sleep 3
clear
;;
10)clear
uname -a
read -p "Pulse una tecla para continuar"
clear

;;
11)
clear
echo "¿Quiere Apagar(a) o Reiniciar(r) el sistema?(a/r)"
read op
if [ $op = "a" ]
then
shutdown now
else
shutdown -r now
fi;;
12)clear
exit;;
*)clear 
echo "Introduzca una opcion valida"
sleep 2
clear;;
esac
done
