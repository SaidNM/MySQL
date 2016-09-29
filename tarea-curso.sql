create database cursos;
use cursos;

create table curso (
codigo varchar(10) primary key,
nombre varchar(50) not null,
descripcion varchar(150) not null
);

create table edicion(
id_edicion int primary key,
fecha date not null,
lugar varchar(15) not null,
tipo varchar (20),
id_curso varchar (10) not null,
foreign key (id_curso) references curso(codigo)
);

create table empleado(
RFC_empleado varchar(15) primary key,
nombre varchar(60) not null,
informacion_extra varchar(200)
);

create table empleado_edicion(
id_edicion int,
rfc_empleado varchar(15),
fecha_inscripcion date,
titulo varchar(25),
foreign key (id_edicion) references edicion(id_edicion),
foreign key (rfc_empleado) references empleado(RFC_empleado),
primary key(id_edicion,rfc_empleado)
);

create table requisito(
id_requisito varchar (10) not null,
codigo_curso varchar (10),
foreign key (codigo_curso) references curso(codigo),
primary key(codigo_curso,id_requisito)
);