USE Traductor2018;
GO

Create proc sp_CCredenciales
(
@usuario	varchar(12), 
@clave	varchar(250), 
@estado	int,
@msg AS VARCHAR(100) OUTPUT
)
as
Begin
declare 
@valor int;

IF EXISTS(select codpersona from Usuario where usuarioD=@usuario and clave=@clave and estado=@estado)
		Begin
		Begin Try
		
			Select u.usuarioD, u.clave, u.estado, u.codPersona from usuario u where usuarioD=@usuario and clave=@clave and estado=@estado; 
			SET @msg = 'Bienvenido'
		End Try	
			Begin Catch	
	 			SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE()
			End Catch
		End
	else
		Begin
			
			SET @msg = 'Usted No tiene Credenciales'
			
		End
End