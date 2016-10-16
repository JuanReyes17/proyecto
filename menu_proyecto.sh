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
1) ./ingreso.sh;;
2) ./estado.sh;;
3) ./situacion.sh;;
4) ./atrasos.sh;;
5) echo salir...
*) echo Opcion incorrecta
esac
done
