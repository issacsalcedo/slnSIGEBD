CREATE TABLE [dbo].[Tienda] (
    [idTienda]   INT           NOT NULL,
    [LogoTienda] VARCHAR (85)  NULL,
    [Direccion]  VARCHAR (100) NULL,
    [Telefono]   VARCHAR (100) NULL,
    [Correo]     VARCHAR (100) NULL,
    [NroRuc]     VARCHAR (25)  NULL,
    PRIMARY KEY CLUSTERED ([idTienda] ASC)
);

