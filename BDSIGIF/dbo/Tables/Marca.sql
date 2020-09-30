CREATE TABLE [dbo].[Marca] (
  [IdMarca] [smallint] NOT NULL,
  [DescripcionMarca] [varchar](85) NULL,
  [NombreMarca] [varchar](100) NULL,
  [fechaModificacion] [date] NULL,
  [fechaCreacion] [date] NULL,
  [usuarioCreacion] [int] NULL,
  [usuarioModificacion] [int] NULL,
  [CodigoMarca] [char](8) NOT NULL,
  [EstadoRegistro] [char](1) NOT NULL,
  CONSTRAINT [PK__Marca__4076A88702793FE0] PRIMARY KEY CLUSTERED ([IdMarca]),
  CONSTRAINT [UQ__Marca__F44A70CDCEABC3E3] UNIQUE ([CodigoMarca])
)
ON [PRIMARY]
GO;