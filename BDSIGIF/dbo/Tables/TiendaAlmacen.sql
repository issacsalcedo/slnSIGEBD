CREATE TABLE [dbo].[TiendaAlmacen] (
    [idAlmacen] INT NOT NULL,
    [idTienda]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([idAlmacen] ASC, [idTienda] ASC),
    CONSTRAINT [FK_TiendaAlmacen_Almacen] FOREIGN KEY ([idAlmacen]) REFERENCES [dbo].[Almacen] ([idAlmacen]),
    CONSTRAINT [FK_TiendaAlmacen_Tienda] FOREIGN KEY ([idTienda]) REFERENCES [dbo].[Tienda] ([idTienda])
);

