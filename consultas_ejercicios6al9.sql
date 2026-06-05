create database tp_consultas; 
use tp_consultas;

/*--------ejercicio 6--------*/

create table Clientes(
ID_Cliente int auto_increment primary key,
NombreClientes varchar(100),
Pais varchar(100));

insert into Clientes(NombreClientes,Pais) values
('Juan Pérez', 'Argentina'), 
('Ana Gómez', 'Argentina'), 
('Carlos Vacca', 'Chile'), 
('Luis Rossi', 'Italia');

select * from Clientes where Pais = 'Argentina';

/*--------ejercicio 7--------*/

create table Pedidos(
ID_Pedido int auto_increment primary key,
ID_Cliente int,
Producto_Comprado varchar(100),
foreign key (ID_Cliente) references Clientes(ID_Cliente)
);

insert into Pedidos (ID_Cliente, Producto_Comprado) values 
(1, 'Monitor 24"'), 
(2, 'Teclado Mecánico'), 
(1, 'Mouse Óptico'),
(3, 'Placa de Video');


select c.NombreClientes, p.Producto_Comprado
from Clientes c
inner join Pedidos p on c.ID_Cliente = p.ID_Cliente;


















