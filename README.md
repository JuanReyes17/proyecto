# proyecto
Proyecto fin de año 2016 

* Propietarios -> id,nombre,apellido,cedula,telefono
* Apartamentos -> id,numero,piso,costo
* Alquileres -> id,id_apartamento,id_propietario,desde,hasta; Si "hasta" es NULL, entonces sigue ocupando
* Pagos -> id,id_propietario,id_apartamento,fecha_pago,corresponde_a_mes,metodo_pago,monto,mongo_gastos_comunes,
* MetodoPago -> id,nombre
* Deudores -> id,id_alquiler,fecha_alta_deudores
* Notificaciones -> id,id_alquiler,fecha,tipo_notificacion,texto_notificacion
* Auditoria -> id,id_deuda,fecha_alta,fecha_baja,fecha_telegrama
ANDA A LA CANCHA BOBO!!
