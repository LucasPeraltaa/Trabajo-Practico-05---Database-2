create database EmpresaPersonal;
use EmpresaPersonal;

create table Personas(
ID_Persona int auto_increment primary key,
Apellido varchar(100),
Nombre varchar(100));

delimiter //

create procedure InsertarPersona(
	in p_Apellido varchar(100),
	in p_Nombre varchar(100)
)
begin
	insert into Personas(Apellido,Nombre)
    values (p_Apellido, p_Nombre);
end //

delimiter ;

CALL InsertarPersona('Peralta', 'Lucas');
select * from Personas;