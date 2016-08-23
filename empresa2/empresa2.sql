create database empresa2;
use empresa2;
create table centro_trabajo(
id_centro varchar(10) not null primary key,
nombre varchar(30) not null default 'Sin nombre',
direccion varchar(50) not null default 'Sin direccion',
poblacion varchar(20) not null default 'Sin direccion'
);
create table departamento(
id_departamento varchar(10) not null primary key,
nombre varchar(30) not null default 'Sin nombre',
presupuesto_anual float not null
);
create table habilidades(
id_habilidad varchar(10) not null primary key,
nombre varchar(30) not null default 'Sin nombre',
descripcion varchar(100) not null default 'Sin descripcion'
);
create table empleados(
rfc varchar(15) not null primary key,
nombre varchar(30) not null default 'Sin nombre',
telefono varchar(10) not null,
fecha_alta date not null,
salario float not null
);
create table hijo_empleado(
id_hijo varchar(10) not null primary key,
fecha_nacimiento date not null
);

alter table centro_trabajo add column rfc_empleado varchar(15) not null;
alter table centro_trabajo add foreign key (rfc_empleado) references empleados(rfc);
alter table departamento add column id_centro varchar(10) not null;
alter table departamento add foreign key (id_centro) references centro_trabajo (id_centro);
alter table empleados add column id_departamento varchar(10) not null;
alter table empleados add foreign key (id_departamento) references departamento (id_departamento);
alter table hijo_empleado add column rfc_padre varchar(15) not null;
alter table hijo_empleado add foreign key (rfc_padre) references empleados (rfc);

create table empleados_habilidades(
rfc_empleado varchar(15),
id_habilidad varchar(10),
primary key(rfc_empleado,id_habilidad)
);

desc centro_trabajo;
desc departamento;
desc empleados;
desc empleados_habilidades;
desc habilidades;
desc hijo_empleado;
desc hijo_empleado;
use empresa2;
desc hijo_empleado;