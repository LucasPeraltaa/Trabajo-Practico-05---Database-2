create database tp_consultas; 
use tp_consultas;

create table Clientes(
ID_Cliente int auto_increment primary key,
NombreClientes varchar(100),
Pais varchar(100));

insert into Clientes(NombreClientes,Pais) values
('Juan Pérez', 'Argentina'), 
('Ana Gómez', 'Argentina'), 
('Carlos Vacca', 'Chile'), 
('Luis Rossi', 'Italia');

select * from Clientes where Pais = 'Argentina'









