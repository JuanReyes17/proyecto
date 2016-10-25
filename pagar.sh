#!/bin/bash
source common_functions.sh


cat pagos;
echo "=================================================";
read -p "ingrese apartamento: " PAGO_APT;
read -p "ingrese mes a pagar: " PAGO_MES;
PAGO_MES_POS=$(($PAGO_MES + 1)); # por la columna con el id de apartamento
TMP_FILE=$(mktemp); # obtengo nombre archivo temporal
echo "1 2 3 4 5 6 7 8 9 10 11 12" >> $TMP_FILE; # agregamos cabecera meses al archivo
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
			MSG="el mes ${PAGO_MES} para el apartamento ${PAGO_APT} ya esta pago";
			echo $APT_LINE >> $TMP_FILE;
		else
			# si no pago
	         	MSG="el pago del apartamento ${PAGO_APT} para el mes ${PAGO_MES} fue realizado con exito";
	         	IZQ=$(echo $APT_LINE |cut -d " " -f 1-$(( ${PAGO_MES_POS} - 1 ))); # cortamos la izquierda del mes a pagar
	         	DER=$(echo $APT_LINE |cut -d " " -f $(( ${PAGO_MES_POS} + 1 ))-); 
	        	echo "$IZQ Y $DER" >> $TMP_FILE;
		fi	 # verificar si estaba en archivo deudores	
			if [[  $(es_moroso "$PAGO_APT") -gt 0 ]];
			then
			echo "$APT debe $(meses_deuda ${PAGO_APT})" >> deudores;  
			fi;
	else 
       			 echo $APT_LINE >> $TMP_FILE;
	fi
done <<< "$(cat pagos |tail -n +2)";

mv pagos pagos.old.$(date +%s) && mv $TMP_FILE pagos;
cat pagos;
echo "${MSG}"; 
read -p "presione cualquier tecla para continuar.";
