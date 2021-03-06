USE [Traductor2018]
GO
/****** Object:  StoredProcedure [dbo].[sp_RegPersona]    Script Date: 29/09/2018 11:05:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[sp_RegPersona]
(
@nom	varchar(65), 
@apePat	varchar(55), 
@apeMat	varchar(55),
@dni	varchar(10),
@usuario	varchar(12),  
@clave varchar(250), 
@correo varchar(150),
@estado int,
@msg AS VARCHAR(100) OUTPUT
)
as
Begin
DECLARE 
@valor int;
	IF EXISTS(select * from Usuario where usuarioD=@usuario)
		Begin
		SET @msg = 'Nombre de Usuario ya existe'
		End
	else
		Begin
		Begin Try
		Insert into Persona (nombres,apePaterno, apeMaterno,dni)
		values(@nom,@apePat,@apeMat,@dni);
		--SELECT @cod_user = SCOPE_IDENTITY();
		select @valor= SCOPE_IDENTITY(); 

		Insert into Usuario (codPersona,usuarioD, clave,correo,estado)
		values(@valor,@usuario,@clave,@correo,@estado);

		SET @msg = 'Registro Insertado'
	
		End Try	
		Begin Catch	
	 		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE()
	
		End Catch
		End
End