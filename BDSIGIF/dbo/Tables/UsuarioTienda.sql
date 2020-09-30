CREATE TABLE [dbo].[UsuarioTienda] (
    [idTienda]  INT NOT NULL,
    [idUsuario] INT NOT NULL,
    CONSTRAINT [PK_UsuarioTienda] PRIMARY KEY CLUSTERED ([idTienda] ASC, [idUsuario] ASC),
    CONSTRAINT [FK_UsuarioTienda_Tienda] FOREIGN KEY ([idTienda]) REFERENCES [dbo].[Tienda] ([idTienda]),
    CONSTRAINT [FK_UsuarioTienda_Usuario] FOREIGN KEY ([idUsuario]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

