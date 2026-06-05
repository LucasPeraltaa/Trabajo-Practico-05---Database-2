create database e01normalizacion;
use e01normalizacion;

/*ejercicio 1*/

create table Pedidos(
ID_Pedido int not null,
ID_Cliente int,
Fecha_Pedido date,
primary key (ID_Pedido)
);

create table Pedido_Productos(
ID_Pedido int not null,
Producto varchar(100) not null,
primary key (ID_Pedido, Producto),
foreign key (ID_Pedido) references Pedidos(ID_pedido) on delete cascade);

/*ejercicio 2*/

create database e02normalizacion;
use e02normalizacion;


create table Pedidos(
ID_Pedido int not null,
NombreCliente varchar(150),
fecha date,
primary key(ID_Pedido));

create table DetallePedidos(
ID_Pedido int not null,
ID_Producto int not null,
Cantidad int,
Precio_Unitario decimal(10,2),
primary key (ID_Pedido, ID_Producto),
foreign key(ID_Pedido) references Pedidos(ID_Pedido) on delete cascade);

/*ejercicio 3*/

create database e03normalizacion;
use e03normalizacion;

create table Departamentos(
ID_Departamento int not null,
Nombre_Departamento varchar(100) not null,
primary key (ID_Departamento));

create table Empleados (
ID_Empleado int not null,
Nombre varchar(100) not null,
ID_Departamento int,
primary key (ID_Empleado),
foreign key (ID_Departamento) references Departamentos(ID_Departamento)
on delete set null
on update cascade);

/*ejercicio 4*/

create database e04normalizacion;
use e04normalizacion;

create table Cursos(
ID_Curso int not null,
primary key (ID_Curso));

create table Curso_Alumnos(
ID_Curso int not null,
ID_Alumno int not null,
primary key (ID_Curso, ID_Alumno),
foreign key (ID_Curso) references Cursos(ID_Curso) on delete cascade);

create table Curso_Profesores(
ID_Curso int not null,
ID_Profesor int not null,
primary key (ID_Curso, ID_Profesor),
foreign key (ID_Curso) references Cursos(ID_Curso) on delete cascade);

/*ejercicio 4*/

create database e05normalizacion;
use e05normalizacion;

create table Proveedor_Producto(
ID_Proveedor int not null,
ID_Producto int not null,
primary key (ID_Proveedor,ID_Producto));

create table Producto_Cliente(
ID_Producto int not null,
ID_Cliente int not null,
primary key(ID_Producto,ID_Cliente));

create table Proveedor_Cliente(
ID_Proveedor int not null,
ID_Cliente int not null,
primary key (ID_Proveedor,ID_Cliente));




















