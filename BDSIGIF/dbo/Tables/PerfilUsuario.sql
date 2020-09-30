CREATE TABLE [dbo].[PerfilUsuario] (
    [idUsuario] INT NOT NULL,
    [idPerfil]  INT NOT NULL,
    CONSTRAINT [FK_PerfilUsuario_Usuario] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Usuario] ([idUsuario])
);

