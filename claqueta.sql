USE [claqueta]
GO
/****** Object:  Table [dbo].[peliculas]    Script Date: 13/10/2018 2:11:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[peliculas](
	[id_peliculas] [int] NOT NULL,
	[nombre_pelicula] [varchar](25) NULL,
	[categoria_pelicula] [varchar](25) NULL,
 CONSTRAINT [PK_peliculas] PRIMARY KEY CLUSTERED 
(
	[id_peliculas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[registro]    Script Date: 13/10/2018 2:11:57 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registro](
	[usuario] [varchar](20) NULL,
	[tipoId] [char](4) NULL,
	[id_usuario] [int] NOT NULL,
	[nombre] [varchar](20) NULL,
	[apellido] [varchar](20) NULL,
	[correo] [varchar](30) NULL,
	[clave] [varchar](15) NULL,
 CONSTRAINT [PK_registro] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[peliculas]  WITH CHECK ADD  CONSTRAINT [FK_peliculas_registro] FOREIGN KEY([id_peliculas])
REFERENCES [dbo].[registro] ([id_usuario])
GO
ALTER TABLE [dbo].[peliculas] CHECK CONSTRAINT [FK_peliculas_registro]
GO
