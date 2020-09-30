CREATE TABLE [dbo].[Marca] (
    [IdMarca]             SMALLINT     NOT NULL,
    [DescripcionMarca]    VARCHAR (85) NULL,
    [fechaModificacion]   DATE         NULL,
    [fechaCreacion]       DATE         NULL,
    [usuarioCreacion]     INT          NULL,
    [usuarioModificacion] INT          NULL,
    [CodigoMarca]         CHAR (8)     NOT NULL,
    [EstadoRegistro]      CHAR (1)     NOT NULL,
    CONSTRAINT [PK__Marca__4076A88702793FE0] PRIMARY KEY CLUSTERED ([IdMarca] ASC),
    CONSTRAINT [UQ__Marca__F44A70CDCEABC3E3] UNIQUE NONCLUSTERED ([CodigoMarca] ASC)
);

