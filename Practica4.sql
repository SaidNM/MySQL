#Parte 1
create database Cinemex;
use Cinemex;
create table cinemex(
idCinemex int primary key,
nombre varchar(45) not null,
direccion varchar(45) not null,
tel varchar(20) not null,
email varchar(50) not null
);


create table Gerente(
idGerente int primary key,
nombre varchar(45) not null,
turno varchar(15) not null,
noCel int,
salario double,
Cinemex_idCinemex int not null,
foreign key(Cinemex_idCinemex) references cinemex(idCinemex)
);

create table Empleado(
idEmpleado varchar(20) primary key,
nombre varchar(50) not null,
direccion varchar(100) not null,
tel varchar(20),
sex varchar(1)
);

create table CinemexEmpleado(
Cinemex_idCinemex int,
Empleado_idEmpleado varchar(20),
foreign key(Cinemex_idCinemex) references cinemex(idCinemex) on delete cascade on update cascade,
foreign key(Empleado_idEmpleado) references Empleado(idEmpleado)on delete cascade on update cascade,
primary key(Cinemex_idCinemex,Empleado_idEmpleado)

);

#Parte 2
alter table Empleado add column(salario double not null);
alter table Empleado add column(email varchar(50) not null);

#Parte 3
#alter table Tabla modify Dato Atributo
alter table Gerente modify noCel varchar(30);


#Parte 4 

#alter table Empleado rename as Asociado;
rename table Empleado to Asociado;

#Parte 5

alter table Asociado modify direccion varchar(150);

#Parte 6

insert Asociado values('201663','Juan Alberto','Calle jacarandas num 122','5564789123','H',1500.23,'soyelpuerco@hotmail.com');
insert Asociado values('201521','Jose Juan','Calle rosales s/n','5512141251','H',1000.05,'soyeljuan@hotmail.com');
insert Asociado values('201236','Jimena Lopez','Calle blancas num 610','5500225411','M',1900.31,'soyjimena@hotmail.com');

insert cinemex values(1,'Cinemex Santa Fe','Santa Fe, Edo. de Mexico','5516142314','santafecinemex@hotmail.com');
insert cinemex values(2,'Cinemex Tezontle','Tezontle, Cd. de Mexico','5522451023','tezontlecinemex@hotmail.com');
insert cinemex values(3,'Cinemex Antara','Polanco, Cd. de Mexico','5522222222','antaracinemex@hotmail.com');

insert CinemexEmpleado values (2,'201236');
insert CinemexEmpleado values (1,'201521');
insert CinemexEmpleado values (3,'201663');

#Parte 7

delete from cinemex where idCinemex=1;
select* from CinemexEmpleado;

#Parte 8

show create table CinemexEmpleado;
#'CinemexEmpleado', 'CREATE TABLE `cinemexempleado` (\n  `Cinemex_idCinemex` int(11) NOT NULL DEFAULT \'0\',\n  `Empleado_idEmpleado` varchar(20) NOT NULL DEFAULT \'\',\n  PRIMARY KEY (`Cinemex_idCinemex`,`Empleado_idEmpleado`),\n  KEY `Empleado_idEmpleado` (`Empleado_idEmpleado`),\n  CONSTRAINT `cinemexempleado_ibfk_1` FOREIGN KEY (`Cinemex_idCinemex`) REFERENCES `cinemex` (`idCinemex`) ON DELETE CASCADE ON UPDATE CASCADE,\n  CONSTRAINT `cinemexempleado_ibfk_2` FOREIGN KEY (`Empleado_idEmpleado`) REFERENCES `asociado` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE\n) ENGINE=InnoDB DEFAULT CHARSET=utf8'

alter table CinemexEmpleado drop foreign key cinemexempleado_ibfk_1;

#constraint --------- cinemexempleado_ibfk_1
show create table Gerente;
#'Gerente', 'CREATE TABLE `gerente` (\n  `idGerente` int(11) NOT NULL,\n  `nombre` varchar(45) NOT NULL,\n  `turno` varchar(15) NOT NULL,\n  `noCel` varchar(30) DEFAULT NULL,\n  `salario` double DEFAULT NULL,\n  `Cinemex_idCinemex` int(11) NOT NULL,\n  PRIMARY KEY (`idGerente`),\n  KEY `Cinemex_idCinemex` (`Cinemex_idCinemex`),\n  CONSTRAINT `gerente_ibfk_1` FOREIGN KEY (`Cinemex_idCinemex`) REFERENCES `cinemex` (`idCinemex`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8'
alter table Gerente drop foreign key gerente_ibfk_1;
alter table cinemex drop primary key;

alter table cinemex add primary key(idCinemex,nombre);

#Parte 9

create table Cartelera(
idCartelera int primary key,
nombre varchar(200) not null,
fechainicio date not null,
fechafin date not null,
clasificacion varchar(5)
);

alter table Cartelera add column idCinemex int;
alter table Cartelera add column nombre_cinemex varchar(45);
alter table Cartelera add foreign key (idCinemex,nombre_cinemex) references cinemex(idCinemex,nombre);

desc Cartelera;





