-- Active: 1718134193172@@localhost@1433@SistemaPortuario@dbo
SELECT *
FROM "Pais";
-------------------
insert into "Pais"("Nombre_Pais")
values ('Brazil');
-------------------
DELETE FROM "Pais" 
WHERE "Pais_ID"=2;
-------------------
/*
Procedimientos
*/
select *
from Orden_Servicio
/* Empresas */
select *
from Empresas
/*Rubro de Empresa*/
select *
from Rubros_Empresas
--Insertar
create or alter proc Rubro_Insertar
@nombre varchar(40)
as
insert into Rubros_Empresas (Designacion_Rubro)
values (@nombre)
go

exec Rubro_Insertar 'Alimentos en General'
/*Orden*/

