CREATE TABLE [dbo].[Modelo] (
    [idModelo]            SMALLINT     NOT NULL,
    [fechaCreacion]       DATE         NULL,
    [fechaModificacion]   DATE         NULL,
    [NombreModelo]        VARCHAR (85) NULL,
    [DescripcionModelo]   VARCHAR (85) NULL,
    [usuarioModificacion] INT          NULL,
    [usuarioCreacion]     INT          NULL,
    [CodigoModelo]        CHAR (20)    NOT NULL,
    [EstadoRegistro]      CHAR (1)     NOT NULL,
    CONSTRAINT [PK__Modelo__13A52CD1C8AD8808] PRIMARY KEY CLUSTERED ([idModelo] ASC),
    CONSTRAINT [UQ__Modelo__E8FBDE1A9808C2A9] UNIQUE NONCLUSTERED ([CodigoModelo] ASC)
);

