USE Traductor2018;
GO
create proc sp_RegCredenciales
(
@codPersona	int, 
@usuario	varchar(12),
@clave	varchar(250),
@correo	varchar(150),  
@estado int,
@msg AS VARCHAR(100) OUTPUT
)
as
Begin
--DECLARE 
--@valor int;
	IF EXISTS(select * from Usuario where codPersona=@codPersona)
		Begin
		SET @msg = 'La Persona ya Cuenta con Credenciales'
		End
	else
		Begin
    		IF EXISTS(select * from Usuario where usuarioD=@usuario)
	    	Begin
		      SET @msg = 'El nombre de Usuario ya esta en uso'
		    End
			else
		       Begin
					Begin Try
					Insert into Usuario 
					(codPersona,usuarioD,clave,correo,estado)
					values
					(@codPersona,@usuario,@clave,@correo,@estado);
					SET @msg = 'Credenciales Registradas'
	
					End Try	
					Begin Catch	
	 					SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE()
	
					End Catch
			End
		End
End