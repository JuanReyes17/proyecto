#!/bin/bash 
clear
while [ "$var" != 5 ]
do
        echo "
                1) Ingresar pago
                2) Emitir estado de cuenta
                3) Situación de cada propietario
                4) Atrasos de gastos comunes
                5) Salir
                Ingrese opción: "
        read var
case $var in
1) ./metodo_pago.sh;;
2) ./estado.sh;;
3) ./situacion.sh;;
4) ./atrasos.sh;;
5) echo -e '\e[0;36m Saliendo...\e[0m' ; sleep 1;;
*) echo -e '\e[0;31m Opción incorrecta\e[0m' ; sleep 1
esac
done
