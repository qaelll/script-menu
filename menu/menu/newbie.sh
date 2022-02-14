#!/bin/bash
#Script principal
clear
echo "Bienvenido al script de gestion para Newbies de linux"
sleep 2
while true
do
clear
echo "******************************************************"
echo "                  Menu principal                      "
echo "******************************************************"
echo "1. Comandos Basicos"
echo "2. Gestion de Archivos"
echo "3. Gestion de Directorios"
echo "4. Gestion de Permisos"
echo "5. Calculadora"
echo "6. Ayuda"
echo "7. Salir"
echo "******************************************************"
read opcion
case $opcion
in
1)/bin/menu/basico/comandos.sh;;
2)/bin/menu/ficheros/gestion.sh;;
3)/bin/menu/directorios/dgestion.sh;;
4)/bin/menu/permisos/permisos.sh;;
5)/bin/menu/calculadora/calculadora.sh;;
6)
clear
echo "*Dudas sobre las rutas en el modo de introduccion manual"
echo -e "Cuando selecciones la introduccion de  una nueva ruta en vez \n usar una ruta guardada, debe introducir la ruta a partir de su carpeta \n /home, por ejemplo si desea usar el directorio de Descargas debe introducir\n simplemente /Descargas"
read -p "Pulse una tecla para continuar" nada
clear
;;
7)clear
exit;;
*)clear
echo "Introduce una opcion correcta"
sleep 3
clear;;

esac
done
