CREATE TABLE [dbo].[Categoria] (
  [IdCategoria] [smallint] NOT NULL,
  [fechaModificacion] [date] NULL,
  [fechaCreacion] [date] NOT NULL,
  [usuarioModificacion] [int] NULL,
  [usuarioCreacion] [int] NULL,
  [NombreCategoria] [varchar](85) NULL,
  [DescripcionCategoria] [varchar](85) NOT NULL,
  [Codigo] [char](8) NULL,
  [EstadoRegistro] [char](1) NOT NULL,
  CONSTRAINT [PK__Categori__A3C02A10DD24C504] PRIMARY KEY CLUSTERED ([IdCategoria]),
  CONSTRAINT [UQ__Categori__6FD5F7E3D3D2293B] UNIQUE ([DescripcionCategoria])
)
ON [PRIMARY]
GO;