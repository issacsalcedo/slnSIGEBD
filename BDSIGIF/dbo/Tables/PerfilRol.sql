CREATE TABLE [dbo].[PerfilRol] (
    [idRol]    INT NOT NULL,
    [idPerfil] INT NOT NULL,
    CONSTRAINT [FK_PerfilRol_Perfil] FOREIGN KEY ([idPerfil]) REFERENCES [dbo].[Perfil] ([idPerfil]),
    CONSTRAINT [FK_PerfilRol_Rol] FOREIGN KEY ([idRol]) REFERENCES [dbo].[Rol] ([idRol])
);

