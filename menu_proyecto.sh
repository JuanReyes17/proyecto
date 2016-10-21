#!/bin/bash 
clear
while [ "$var" != 4 ]
do
        echo "  ¿Qué desea relizar?
                1) Ingresar pago
                2) Situación de cada propietario
                3) Atrasos de gastos comunes
                4) Salir
                Ingrese opción: "
        read var
case $var in
1) ./metodo_pago.sh;;
2) ./situacion.sh;;
3) ./atrasos.sh;;
4) echo -e '\e[0;36m Saliendo...\e[0m' ; sleep 1;;
*) echo -e '\e[0;31m Opción incorrecta\e[0m' ; sleep 1
esac
done
