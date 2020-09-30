CREATE TABLE [dbo].[GestionCantidadDisponibleProducto] (
    [CantidadMinima] DECIMAL (18, 4) NULL,
    [IdProducto]     INT             NOT NULL,
    [CantidadMaxima] DECIMAL (18, 3) NOT NULL,
    [fechaInicio]    DATETIME        NULL,
    [fechaFin]       DATETIME        NULL,
    CONSTRAINT [FK_GestionCantidadDisponibleProducto_Producto] FOREIGN KEY ([IdProducto]) REFERENCES [dbo].[Producto] ([idProducto])
);

