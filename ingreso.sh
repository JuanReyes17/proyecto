#!/bin/bash
clear
f=`date +%d`
if [ $f -le 10 ]
then
        read -p "Ingrese número de apartamento: " id_apartamento
        if grep -wq $id_apartamento propietarios.txt 2> /dev/null
        then
                read -p "El pago corresponde al mes: " corresponde_a_mes
                monto="2100"
                echo $id_apartamento:$corresponde_a_mes:$monto >> pagos.txt
        else
                echo -n "Número de apartamento incorrecto, para ingresar uno nuevo presione cualquier tecla, para salir s: "
                read op
                if [ $op = s ]
                then
                        echo saliendo...
                fi
        fi
else
         echo -n "Solo se pueden realizar pagos del 1º al 10 de cada mes" 
sleep 2
clear
fi
