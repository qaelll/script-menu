#!/bin/bash
# Script de directorios
rec(){
ruta=$(cat /bin/menu/enviar/ruta.txt)
}
selec(){
echo "¿Desea usar una  ruta previamente guardada o introducirla"
read -p "Guardada (g)/Ruta nueva(n): " oruta
}
while true
do
clear
echo "***************************************************"
echo "               Gestion de Directorios"
echo "***************************************************"
echo "1. Navegar por los directorios"
echo "2. Crear directorio"
echo "3. Borrar Directorio"
echo "4. Mover directorio"
echo "5. Mostrar el arbol de directorios"
echo "6. Comprimir en zip"
echo "7. Descomprimir zip"
echo "8. Cambiar nombre de directorio"
echo "9. Salir"
echo "***************************************************"
read opcion
case $opcion
in
1)/bin/menu/nav/navegacion.sh
;;
2)clear
selec
if [ $oruta = "g" ]
then
clear
rec
read -p "Introduce el nombre del directorio a crear: " nom
mkdir $ruta/$nom
echo "Se ha creado el directorio " ~/$nom
sleep 3
else
read -p "Introduce la ruta en la que desea crearlo y el nombre: " nom
mkdir ~/$nom
echo "Se ha creado el directorio  en la ruta: " ~/$nom
sleep 3
fi
;;
3)clear
selec
if [ $oruta = "g" ]
then
rec
clear
read -p "Introduce el nombre del directorio a borrar: " nom
rmdir $ruta/$nom
echo "Se ha borrado el directorio " ~/$nom
sleep 3
else
read -p "Introduce la ruta y el nombre del directorio a borrar: " nom
rmdir ~/$nom
echo "Se ha borrado el directorio: " ~/$nom
sleep 3
fi
;;
4)clear
selec
if [ $oruta = "g" ]
then
rec
clear
read -p "Introduce el nombre del directorio a mover: " nom
read -p "Introduce la ruta donde desea moverlo: " ruta2
mv $ruta/$nom  ~/$ruta2
echo "Se ha movido el directorio " $nom
sleep 3
else
read -p "Introduce la ruta y el nombre del directorio a mover: " nom
read -p "Introduce la ruta donde desea mover el directorio: " ruta
mv ~/$nom ~/$ruta
echo "Se ha movido el directorio: $nom a la ruta: $ruta "
sleep 3
fi
;;
5)clear
tree
read -p "Pulse una tecla para continuar" nada;;
6)
clear
selec
if [ $oruta = "g" ]
then
rec
clear
read -p "Introduce el nombre que tendra el directorio comprimido: " nom

zip -R ~/Documentos/$nom $ruta

echo "Se ha comprimido el directorio en ~/Documentos"

sleep 3
clear
else
read -p "Introduce la ruta y el nombre del directorio a comprimir: " nom
read -p "Introduce el nombre que tendra el comprimido: " nom2

zip -R ~/Documentos/$nom2 $nom
clear
echo "Se ha comprimido el archivo en ~/Documentos"
sleep 3
clear
fi
;;
7)
clear
declare ruta2
echo "Introduce el nombre exacto(incluida la extension) del archivo a descomprimir: "
read nom
ruta2=$(find ~ -type f -name "$nom")
unzip $ruta2 -d ~/Documentos
echo "Se ha descomprimido el archivo en la carpeta ~/Documentos"
sleep 3
clear
;;
8)
clear
selec
if [ $oruta = "g" ]
then
rec
clear
read -p "Introduce el nombre del directorio que desea cambiar: " nom
read -p "Introduce el nuevo nombre: " ruta2
mv $ruta/$nom  $ruta/$ruta2
echo "Se ha cambiado el nombre a: " $ruta2
sleep 3
else
read -p "Introduce la ruta y el nombre del directorio que desea cambiar: " nom
read -p "Introduce de nuevo la ruta y el nuevo nombre: " ruta
mv ~/$nom ~/$ruta
echo "Se ha cambiado el nombre del directorio: $ruta "
sleep 3
fi

;;
9)clear
exit;;
*)
echo "Introduce una opcion valida"
sleep 3
esac
done

