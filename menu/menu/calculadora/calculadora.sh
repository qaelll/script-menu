#codigo para una calculadora
#!/bin/bash
while true
do
clear
echo "******************************************"
echo 	       	"Calculadora"
echo "Selecione la operacion a realizar:"
echo "1.Sumar"
echo "2.Restar"
echo "3.Multiplicar"
echo "4.Dividir"
echo "5.Resto"
echo "6.Salir"
echo "******************************************"
read seleccion
clear 
case $seleccion in
1) echo "Introduzca los numeros a sumar de uno en uno:"
   read suma1
   read suma2
   clear
   echo "El resultado de sumar " $suma1 " + " $suma2 " es:"
   calc $suma1+$suma2
   echo "Quiere realizar otra operacion?[s/n]"
   read seguir
   if [ $seguir =  "s" ]
	then 
             clear
	else 
             clear
             exit
   fi;;
2) echo "Introduzca los numeros a restar de uno en uno:"
   read suma1
   read suma2
   clear
   echo "El resultado de restar " $suma1 " - " $suma2 " es:"
   calc $suma1-$suma2
   echo "Quiere realizar otra operacion?[s/n]"
   read seguir    
   if [ $seguir =  "s" ]
        then 
             clear
        else 
             clear
             exit
   fi;;
3) echo "Introduzca los numeros a multiplicar de uno en uno:"
   read suma1
   read suma2
   clear
   echo "El resultado de multiplicar " $suma1 " * " $suma2 " es:"
   calc $suma1*$suma2
   echo "Quiere realizar otra operacion?[s/n]"
   read seguir 
   if [ $seguir =  "s" ]
        then 
             clear
        else 
             clear
	     exit
   fi;;
4) echo "Introduzca los numeros a dividir de uno en uno:"
   read suma1
   read suma2
   clear
   echo "El resultado de dividir " $suma1 " / " $suma2 " es:"
   calc $suma1/$suma2
   echo "Quiere realizar otra operacion?[s/n]"
   read seguir    
   if [ $seguir =  "s" ]
        then 
             clear
        else 
             clear
             exit
 
   fi;;

5) echo "Introduzca los numeros para saber el resto de uno en uno:"
   read suma1
   read suma2
   clear
   echo "El resto de la operacion " $suma1 " / " $suma2 " es:"
   calc $suma1%$suma2
   echo "Quiere realizar otra operacion?[s/n]"
   read seguir    
   if [ $seguir =  "s" ]
        then 
             clear
        else 
             clear
             exit
   fi;;

6)clear
 exit;;

*)echo "Introduzca una opcion valida"
 sleep 5
 clear;;


esac

done

