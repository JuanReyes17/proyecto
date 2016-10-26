#!/bin/bash
clear
read -p "ingrese apartamento: " PAGO_APT;
read -p "ingrese mes a verificar: " PAGO_MES;
PAGO_MES_POS=$(($PAGO_MES + 1)); # por la columna con el id de apartamento
while read APT_LINE;
do 
	APT=$(echo $APT_LINE |awk '{print $1}'); # extraigo # de apto
	if [[ "A${PAGO_APT}" == "${APT}" ]];
	then
       		 # si el apto actual en el while es el deseado...      
		APT_LINE_MES=$(echo $APT_LINE |cut -d " " -f $PAGO_MES_POS); # obtengo dato actual para el mes que se desea pagar
		if [[ "${APT_LINE_MES}" == "Y" ]];
       		then
	        	# si ya pago...
			echo -n "El pago del mes ${PAGO_MES} para el apartamento ${PAGO_APT} fué realizado con éxito";
			sleep 1
			clear
		else
			# si no pago
	         	echo -n "No se ah efectuado el pago del apartamento ${PAGO_APT} para el mes ${PAGO_MES}"
			sleep 1
			clear        
		fi 	
		
	fi
done <<< "$(cat pagos |tail -n +2)";
