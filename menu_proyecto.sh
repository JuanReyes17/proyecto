#!/bin/bash 
clear
while [ "$var" != 5 ]
do
        echo -e "  \e[1;30m ¿Qué desea relizar?\e[0m
                \e[0;32m1) Ingresar pago
                2) Emitir estado de cuenta
                3) Situación de cada propietario
                4) Atrasos
                5) Salir\e[0m
                \e[1;33m Ingrese opción: \e[0m"
        read var
case $var in
1) ./metodo_pago.sh;;
2) ./estado.sh;;
3) ./situacion.sh;;
4) ./atrasos.sh;;
5) echo -e '\e[0;36m Saliendo...\e[0m' ; sleep 1; clear;;
*) echo -e '\e[0;41m Opción incorrecta\e[0m' ; sleep 1; clear;
esac
done
