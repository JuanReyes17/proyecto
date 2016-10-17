
#!/bin/bash
clear
f=$(date +%d/%m/%Y)
echo "Hoy es $f"
dia=`date +%d`
if [ $dia -le 10  ]
then
        read -p "Ingrese número de apartamento: " id_apartamento
        if grep -wq $id_apartamento propietarios.txt 2> /dev/null
        then
                read -p "El pago corresponde al mes: " corresponde_a_mes
                monto="1995"
                echo -n "El monto es: $monto"
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
        read -p "Ingrese número de apartamento: " id_apartamento
        if grep -wq $id_apartamento propietarios.txt 2> /dev/null
        then
                read -p "El pago corresponde al mes: " corresponde_a_mes
                monto1="2100"
                echo -n "El monto es: $monto1"
                echo $id_apartamento:$corresponde_a_mes:$monto >> pagos.txt
        else
                echo -n "Número de apartamento incorrecto, para ingresar uno nuevo presione cualquier tecla, para salir s: "
                read op
                if [ $op = s ]
                then
                        echo saliendo...
                fi
        fi
fi
sleep 1
