create database ejemploempresa1;
use ejemploempresa1;
create table clientes(
rfc varchar(20) primary key,
nombre varchar(50) not null default 'Sin nombre',
direccion varchar(80) not null default 'Sin direccion',
telefono varchar(30) not null default 'Sin telefono',
email varchar(50) not null default 'Sin e-mail'
);
create table proveedores(
rfc varchar(20) primary key,
nombre varchar(50) not null default 'Sin nombre',
direccion varchar(80) not null default 'Sin direccion',
email varchar(50) not null default 'Sin e-mail'
);
create table telefonos_proveedores(
id_telefono int auto_increment,
rfc varchar(20),
telefono varchar(10) not null,
primary key(id_telefono,rfc)
);
create table productos(
id_producto int primary key auto_increment,
nombre varchar(20) not null default 'Sin nombre',
precio float not null default 0,
rfc_proveedor varchar(20) not null,
foreign key (rfc_proveedor) references proveedores (rfc)
);
create table clientes_productos(
rfc_cliente varchar(20),
id_producto int,
primary key(rfc_cliente,id_producto)
);
show tables;
describe clientes;
describe clientes_productos;
describe proveedores;
describe productos;
describe telefonos_proveedores;
