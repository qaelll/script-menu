#!/bin/bash
#Script de gestion de ficheros
rec(){
ruta=$(cat /bin/menu/enviar/ruta.txt)
}
selec(){
echo "¿Desea usar una  ruta previamente guardada o introducirla"
read -p "Guardada (g)/Ruta nueva(n): " oruta
}

clear
while true
do
clear
echo "************************************************"
echo "            Menu de Gestion de archivos"
echo "************************************************"
echo "1.  Crear archivo"
echo "2.  Borrar archivo"
echo "3.  Mover archivo"
echo "4.  Copiar archivo"
echo "5.  Enlazar archivos"
echo "6.  Leer archivo de texto"
echo "7.  Navegar por los directorios"
echo "8.  Descargar archivo"
echo "9.  Modificar archivo de texto"
echo "10. Salir"
echo "************************************************"
read opcion
case $opcion
in
1)clear
selec
if [ $oruta = "n" ]
then
clear
echo "Indica la ruta donde quieres crear el archivo, incluyendo el nombre del mismo:"
read ruta
touch ~/$ruta

echo "Fichero creado en la ruta: $ruta"
else
rec
read -p "Introduce el nombre del archivo: " nom
touch $ruta/$nom
clear
echo "Se ha creado el archivo: $ruta/$nom"
clear
fi
sleep 3
clear
;;
2)clear
selec
if [ $oruta = "g" ]
then
rec
read -p "Indica el nombre del archivo a borrar: " nom
rm $ruta/$nom
clear
echo "El archivo en la ruta $ruta/$nom ha sido borrado"
sleep 3
clear
else
echo "Indica la ruta y nombre del archivo a borrar:"
read ruta
rm ~/$ruta
echo "El archivo  en la ruta: $ruta  fue borrado"
sleep 3
clear
fi
;;
3)clear
echo "Indica la ruta del archivo que desea mover:"
read ruta1
clear
echo "Indica la ruta donde desea moverlo:"
read ruta2
clear
mv ~/$ruta1 ~/$ruta2
echo "El fichero: $ruta1 fue movido a: $ruta2"
sleep 3
clear
;;
4)clear
echo "Indica la ruta del archivo que desea copiar:"
read ruta1
clear
echo "Indica la ruta donde desea copiarlo:"
read ruta2
clear
cp ~/$ruta1 ~/$ruta2
echo "El fichero: $ruta1 fue copiado a: $ruta2"
sleep 3
clear
;;
5)echo "¿Desea un enlace debil/acceso directo(d) o un enlace fuerte(f)?(d/f)"
read op
if [ $op = "f" ]
then
clear
echo "Indica la ruta del archivo que desea crear el enlace:"
read ruta1
clear
echo "Indica la ruta donde desea crear el enlace:"
read ruta2
clear
ln ~/$ruta1 ~/$ruta2
echo "Se ha creado un enlace duro en la ruta: $ruta2"
sleep 3
clear
else
clear
echo "Indica la ruta del archivo que desea crear el enlace:"
read ruta1
clear
echo "Indica la ruta donde desea crear el enlace:"
read ruta2
clear
ln -s ~/$ruta1 ~/$ruta2
echo "Se ha creado un acceso directo en la ruta: $ruta2"

fi
;;
6)
clear
selec
if [ $oruta = "g" ]
then
rec
echo "Introduzca el nombre del archivo:"
read nombre
clear
cat $ruta/$nom
read -p "Pulse una tecla para continuar" nada
clear
else
echo "Introduzca la ruta al archivo, incluido el nombre:"
read nombre
clear
cat $nombre
read -p "Pulse una tecla para continuar"
fi
;;
7)/bin/menu/nav/navegacion.sh
;;
8)
clear
echo -e "Introduzca la direccion web completa del archivo a descargar: "
read wruta
wget -P ~/Descargas $wruta
clear
echo "El archivo se ha descargado en la carpeta ~/Descargas"
read -p "Pulse una tecla para continuar"
clear
;;
9)
clear
selec
if [ $oruta = "g" ]
then
rec
echo "Introduzca el nombre del archivo:"
read nombre
clear
nano $ruta/$nom
clear
else
echo "Introduzca la ruta al archivo, incluido el nombre:"
read nombre
clear
nano $nombre
clear
fi

;;
10)clear
exit;;
*)clear
echo "Introduce una opcion valida"
sleep 3
clear
;;
esac
done
