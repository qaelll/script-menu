#!/bin/bash
#Script de gestion de permisos
bus(){
read -p "Introduzca el nombre del archivo o directorio: " nom
ruta=$(find ~ -name $nom)
clear
}
while true
do
clear
echo "*************************************************"
echo "                Menu de permisos"
echo "*************************************************"
echo "1. Dar permisos"
echo "2. Quitar permisos"
echo "3. Cambiar propietario"
echo "4. Salir"
echo "*************************************************"
read  opcion
clear
case $opcion
in
1)
bus
echo -e "Estos son los permisos actuales\n"
ls -l -d $ruta
echo -e "\n A quien quiere dar los permisos: \npropietario(u)/grupo(g)/otros(o)"
read perm
clear
while true
do
clear
echo -e "Estos son los permisos actuales\n"
ls -l -d $ruta

echo -e "\n**************************************************"
echo "          Seleccione que permiso quiere dar"
echo "**************************************************"
echo "1. Lectura"
echo "2. Escritura"
echo "3. Ejecucion"
echo "4. Salir"
echo "**************************************************"
read dar
case $dar
in
1) chmod $perm+r $ruta
;;
2) chmod $perm+w $ruta
;;
3) chmod $perm+x $ruta
;;
4)clear
break
;;
*)clear
echo "Seleccione una opcion valida"
sleep3
clear
;;
esac
done
;;
2)bus
echo -e "Estos son los permisos actuales\n"
ls -l -d $ruta
echo -e "\n A quien quiere quitar los permisos: \npropietario(u)/grupo(g)/otros(o)"
read perm
clear
while true
do
clear
echo -e "Estos son los permisos actuales\n"
ls -l -d $ruta

echo -e "\n**************************************************"
echo "          Seleccione que permiso quiere quitar"
echo "**************************************************"
echo "1. Lectura"
echo "2. Escritura"
echo "3. Ejecucion"
echo "4. Salir"
echo "**************************************************"
read dar
case $dar
in
1) chmod $perm-r $ruta
;;
2) chmod $perm-w $ruta
;;
3) chmod $perm-x $ruta
;;
4)clear
break
;;
*)clear
echo "Seleccione una opcion valida"
sleep3
clear
;;
esac
done
;;


3)
bus
clear
echo -e "Estos son los propietarios actuales\n"
ls -l -d $ruta
echo -e "\n ¿Que propietario desea cambiar? usuario(u)/grupo(g)"
read prop
clear
case $prop
in
u)read -p "Introduzca el nombre del nuevo propietario: " nuev
chown $nuev $ruta
clear
echo -e "Estos son los propietarios actuales\n"
ls -l -d $ruta
sleep 3
;;
g)read -p "Introduzca el nombre del nuevo propietario: " nuev
chown :$nuev $ruta
clear
echo -e "Estos son los propietarios actuales\n"
ls -l -d $ruta
sleep 3

;;
*)clear
echo "Introduzca una opcion valida"
sleep 3
clear
;;
esac

;;

4)clear
exit
;;
*)clear
echo "Introduzca una opcion valida"
sleep 3
esac
done
