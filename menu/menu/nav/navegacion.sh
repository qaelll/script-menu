#!/bin/bash
#Script de navegacion
mover(){
read -p "Introduce el nombre del directorio al que desea ir: " mov
cd $mov
}
guardar(){
rm /bin/menu/enviar/ruta.txt
pwd > /bin/menu/enviar/ruta.txt
echo "Se ha guardado la ruta con exito"
sleep 3
}
volver(){
cd ..
}
while true
do
clear
echo -e "Estas en el directorio:\c "
pwd
echo -e "\nEstos son los directorios  a los que puede ir: \n"
tree
echo -e "\nMoverse a un fichero(m) Guardar ruta(g)\n Volver al directorio anterior (v) Salir (s)"
read opcion
case $opcion
in
m)mover;;
g)guardar;;
v)volver;;
s) clear
exit;;
*)clear
echo "Introduce una opcion valida"
sleep 3;;
esac
done
