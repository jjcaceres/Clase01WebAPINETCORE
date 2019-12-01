﻿/*
Script de implementación para Training

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Training"
:setvar DefaultFilePrefix "Training"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO


INSERT INTO [Entrenamiento].[Alumno]
           (
           [Nombre]
           ,[ApellidoPaterno]
           ,[ApellidoMaterno]
           ,[Edad])
     VALUES
           (		   'Franco','Cotrina','Romero',35   ),
		   (		   'Carlos','Esejo','Huerta',29   ),
		   (		   'Jose','Caceres','Mamani',3   ),
		   (		   'Yuri','Grandez','Del Aguila',30   )
GO

GO
PRINT N'Actualización completada.';


GO
