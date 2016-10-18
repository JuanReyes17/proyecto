#!/bin/bash
clear
read -p "Ingrese número de apartamento: " id_apartamento
if grep -wq $id_apartamento pagos.txt 2> /dev/null
then
        echo -n "El pago ah sido realizado con éxito"
        sleep 1
        exit
else
        echo -n "No se ah efectuado ningun pago, presione cualquier tecla verificar otro pago, presione s para volver: "
        read op
        if [ $op = s ]
        then
                echo -e '\e[0;36m Saliendo...\e[0m'
        fi
        sleep 1
        exit
fi
