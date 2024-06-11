--Con este comando puede eliminiar cualquier base de datos
USE master;
GO
CREATE PROCEDURE EliminarBaseDeDatos
    @NombreDeLaBaseDeDatos NVARCHAR(128)
AS
BEGIN
    -- Declara variables para construir las consultas dinámicas
    DECLARE @sql NVARCHAR(MAX);

    -- Asegura que no haya conexiones activas a la base de datos
    SET @sql = N'ALTER DATABASE [' + @NombreDeLaBaseDeDatos + N'] SET SINGLE_USER WITH ROLLBACK IMMEDIATE';
    EXEC sp_executesql @sql;

    -- Elimina la base de datos
    SET @sql = N'DROP DATABASE [' + @NombreDeLaBaseDeDatos + N']';
    EXEC sp_executesql @sql;

    PRINT 'La base de datos ' + @NombreDeLaBaseDeDatos + ' ha sido eliminada.';
END;
GO
----------------------------------------------------
EXEC EliminarBaseDeDatos @NombreDeLaBaseDeDatos = 'SistemaPortuario';