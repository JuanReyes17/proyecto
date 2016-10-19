#!/bin/bash
clear
while [ "$var" != 3 ]
do
        echo "  ¿De qué forma desea abonar?
                1) Al contado
                2) Verificar pago a través de la banca electrónica
                3) Volver
                Ingrese opción: "
        read var
        case $var in
                1) ./ingreso.sh;;
                2) ./verificar.sh;;
                3) echo -e '\e[0;32m Regresando...\e[0m'; sleep 1;;
                *) echo -e '\e[0;31m Opción incorrecta\e[0m'; sleep 1
        esac
done                                                                            
