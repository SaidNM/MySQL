create database mixup1;
use mixup1;

desc empleado;
desc mixup;
select * from mixup;
select * from genero;
select nombre from socio;

#punto 1 
select empleado.nombre,empleado.tel from empleado inner join mixup on empleado.MixUp_idMixUp = mixup.idMixUp and mixup.edo = "DF";
#punto 2 
select produccion.titulo from produccion inner join mixprod on produccion.idProduccion=mixprod.Produccion_idProduccion inner join mixup on mixprod.MixUp_idMixUP=mixup.idMixup and mixup.nombre="MixUp Santa Fe";
#punto 3
select nombre,email from socio;
#punto 4
select empleado.nombre from empleado,mixup where empleado.MixUp_idMixUp=mixup.idMixUp and mixup.nombre="Mixup Santa Fe";
#punto 5
select socio.nombre, socio.direccion from mixup,socio,mixsoc where socio.idsocio=mixsoc.Socio_idSocio and mixsoc.Mixup_idMixUp=mixup.idMixUp and mixup.edo="GUERRERO";
#punto 6
select titulo from produccion inner join genero on produccion.idProduccion=genero.Produccion_idProduccion;
#punto 7
select nombre from genero;
#punto 8
select produccion.autor from mixup,mixprod,produccion where produccion.idProduccion=mixprod.Produccion_idProduccion and mixprod.MixUp_idMixUp=mixup.idMixUp and mixup.edo="GUERRERO";
#punto 9 
select empleado.nombre, empleado.tel from empleado inner join mixup on empleado.MixUP_idMixUP=mixup.idMixUp inner join mixsoc on mixup.idMixUP=mixsoc.MixUp_idMixUP inner join socio on mixsoc.Socio_idSocio=socio.idSocio and socio.nombre like "%ALEJANDRO%"; 
#punto 10
select genero.nombre from genero inner join produccion on genero.Produccion_idProduccion=produccion.idProduccion inner join mixprod on produccion.idproduccion=mixprod.Produccion_idProduccion inner join mixup on mixprod.MixUp_idMixUp = mixup.idMixUp inner join mixsoc on mixup.idMixUp=mixsoc.MixUp_idMixUP inner join socio on mixsoc.Socio_idSocio=socio.idSocio  where socio.nombre like 'PEREZ MORALES MARCELA'; 
#punto 11
select nombre,tel from mixup;
#punto 12
select empleado.nombre from empleado inner join mixup on mixup.idMixUp=empleado.MixUp_idMixUp where mixup.nombre='MixUP Perisur' or mixup.nombre='Mixup Santa Fe';
#punto 13
select empleado.tel from empleado inner join mixup on empleado.MixUp_idMixup = mixup.idMixUp inner join mixprod on mixup.idMixup=mixprod.MixUp_idMixUP inner join produccion on mixprod.Produccion_idProduccion=produccion.idProduccion inner join genero on produccion.idProduccion=genero.Produccion_idProduccion and genero.nombre='Pop & Rock';
#punto 14 
select nombre,dir from mixup;
#punto 15 
select socio.nombre,mixup.nombre from socio,mixup,mixsoc where socio.idSocio=mixsoc.Socio_idSocio and mixup.idMixUp=mixsoc.MixUp_idMixUp;
#punto 16 
select mixup.nombre,socio.nombre,socio.tel from mixup,socio,mixsoc where mixup.idMixUp=mixsoc.MixUp_idMixUp and mixsoc.socio_idSocio=socio.idSocio and socio.nombre like '%HERNANDEZ%';
#punto 17 
select socio.nombre,mixup.nombre from socio,mixsoc,mixup where mixsoc.MixUp_idMixUp=mixup.idMixUP and mixsoc.Socio_idSocio=socio.idSocio and mixup.nombre='MixUp Perisur';
#punto 18
select nombre from mixup where dir like '%64050%' or dir like '%06000%' or dir like '%05109%';
#punto 19
select * from socio where nombre like '%GARCIA%' and nombre like '% % %e%';
#punto 20
select count(nombre) as Numeromixup from mixup;