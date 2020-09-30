CREATE TABLE [dbo].[Categoria] (
    [IdCategoria]          SMALLINT     NOT NULL,
    [fechaModificacion]    DATE         NULL,
    [fechaCreacion]        DATE         NOT NULL,
    [usuarioModificacion]  INT          NULL,
    [usuarioCreacion]      INT          NULL,
    [DescripcionCategoria] VARCHAR (85) NOT NULL,
    [Codigo]               CHAR (8)     NULL,
    [EstadoRegistro]       CHAR (1)     NOT NULL,
    CONSTRAINT [PK__Categori__A3C02A10DD24C504] PRIMARY KEY CLUSTERED ([IdCategoria] ASC),
    CONSTRAINT [UQ__Categori__6FD5F7E3D3D2293B] UNIQUE NONCLUSTERED ([DescripcionCategoria] ASC)
);

