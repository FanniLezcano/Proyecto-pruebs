USE [DBRemax]
GO

/****** Object:  Table [dbo].[propiedades_recomendaciones]    Script Date: 25/12/2023 3:43:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[propiedades_recomendaciones](
	[ID_PROPIEDAD] [varchar](50) NOT NULL,
	[ID_AGENTE] [int] NULL,
	[ID_DETALLE] [int] NULL,
	[ID_AREA] [int] NULL,
	[ID_EQUIPO] [int] NULL,
	[ID_DUENO] [int] NULL,
	[ID_MUNICIPIO] [int] NULL,
	[ID_COLONIA] [int] NULL,
	[PRECIO] [int] NULL,
	[PRECIODESDE] [int] NULL,
	[PRECIOHASTA] [int] NULL,
	[MONEDA] [varchar](20) NULL,
	[SECTOR] [varchar](50) NULL,
	[TIPO] [varchar](50) NULL,
	[OPERACION] [varchar](20) NULL,
	[CODIGO_P] [varchar](20) NULL,
	[ESTADO] [varchar](20) NULL,
	[ZONA] [varchar](100) NULL,
	[CALLE] [varchar](100) NULL,
	[NOEXTERIOR] [varchar](20) NULL,
	[NOINTERIOR] [varchar](20) NULL,
	[LONGITUD] [float] NULL,
	[LATITUD] [float] NULL,
	[TITULO] [varchar](150) NULL,
	[CARACTERISTICAS] [varchar](250) NULL,
	[MANTA] [varchar](20) NULL,
	[ESTATUS] [varchar](20) NULL,
	[PORCENTAJE] [varchar](20) NULL,
	[CLAVE] [varchar](20) NULL,
	[LLAVES] [varchar](30) NULL,
	[COMENTARIOS] [varchar](150) NULL,
	[EXCLUSIVIDAD] [varchar](20) NULL,
	[PROPUESTA] [varchar](20) NULL,
	[VENTAPENDIENTE] [varchar](20) NULL,
	[FECHA_REGISTRO] [date] NULL,
	[ARCHIVADA] [varchar](10) NULL,
	[VISITAS] [int] NOT NULL,
	[imagen_ruta] [nvarchar](350) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_PROPIEDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


