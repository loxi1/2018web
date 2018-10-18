use Traductor2018;
go
CREATE proc sp_RegCliente
(
@nom	varchar(65), 
@apePat	varchar(55), 
@apeMat	varchar(55),
@dni    varchar(10),
@msg AS VARCHAR(100) OUTPUT
)
as
Begin
DECLARE 
@valor int;
	IF EXISTS(select * from Persona where dni=@dni)
		Begin
		SET @msg = 'Persona ya Existe'
		End
	else
		Begin
		Begin Try
		Insert into Persona (nombres,apePaterno, apeMaterno)
		values(@nom,@apePat,@apeMat);
		--SELECT @cod_user = SCOPE_IDENTITY();
		select @valor= SCOPE_IDENTITY(); 

		Insert into Cliente (codPersona)
		values(@valor);

		SET @msg = 'Cliente Registrado'
	
		End Try	
		Begin Catch	
	 		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE()
	
		End Catch
		End
End