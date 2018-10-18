use Traductor2018;
go
create proc sp_RegTraducciones
(
@codCliente	        int, 
@palabraTraducir	varchar(90),
@resultado          varchar(90),
@idioma             varchar(90),
@msg                AS VARCHAR(100) OUTPUT
)
as
Begin	
		Begin
			Begin Try
				Insert into OperacionesTraductor(codCliente,palabraATraducir,resultadoTraduccion,idioma)
				values(@codCliente,@palabraTraducir,@resultado,@idioma);
				SET @msg = 'Traducciòn Registrada con Èxito'
			End Try	

		Begin Catch	
	 		SET @msg = 'Ocurrio un Error: ' + ERROR_MESSAGE()
	
		End Catch

		End
End