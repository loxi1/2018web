USE [Traductor2018]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[codCliente] [int] IDENTITY(1,1) NOT NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[codCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OperacionesTraductor]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OperacionesTraductor](
	[codOperaciones] [int] IDENTITY(1,1) NOT NULL,
	[codCliente] [int] NULL,
	[palabraATraducir] [varchar](90) NULL,
	[resultadoTraduccion] [varchar](90) NULL,
	[idioma] [varchar](90) NULL,
 CONSTRAINT [PK_OperacionesTraductor] PRIMARY KEY CLUSTERED 
(
	[codOperaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[codPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](65) NULL,
	[apePaterno] [varchar](55) NULL,
	[apeMaterno] [varchar](55) NULL,
	[dni] [varchar](10) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[codPersona] [int] NULL,
	[usuarioD] [varchar](12) NULL,
	[clave] [varchar](250) NULL,
	[correo] [varchar](150) NULL,
	[estado] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Persona] FOREIGN KEY([codPersona])
REFERENCES [dbo].[Persona] ([codPersona])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Persona]
GO
ALTER TABLE [dbo].[OperacionesTraductor]  WITH CHECK ADD  CONSTRAINT [FK_OperacionesTraductor_Cliente] FOREIGN KEY([codCliente])
REFERENCES [dbo].[Cliente] ([codCliente])
GO
ALTER TABLE [dbo].[OperacionesTraductor] CHECK CONSTRAINT [FK_OperacionesTraductor_Cliente]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([codPersona])
REFERENCES [dbo].[Persona] ([codPersona])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
/****** Object:  StoredProcedure [dbo].[sp_CCredenciales]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CCredenciales]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_RegCliente]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_RegCliente]
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
		Insert into Persona (nombres,apePaterno, apeMaterno, dni)
		values(@nom,@apePat,@apeMat,@dni);
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
GO
/****** Object:  StoredProcedure [dbo].[sp_RegCredenciales]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_RegCredenciales]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_RegPersona]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_RegPersona]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_RegTraducciones]    Script Date: 07/10/2018 12:45:32 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_RegTraducciones]
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
GO
