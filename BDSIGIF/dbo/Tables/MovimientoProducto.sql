CREATE TABLE [dbo].[MovimientoProducto] (
    [idMovimientoProd]   INT             NOT NULL,
    [IdProducto]         INT             NULL,
    [cantidadProducto]   DECIMAL (15, 3) NOT NULL,
    [tipoMovimiento]     CHAR (1)        NOT NULL,
    [fechaIngreso]       DATETIME        NOT NULL,
    [cantidadActual]     DECIMAL (15, 3) NOT NULL,
    [idAlmacen]          INT             NOT NULL,
    [idDetalleOperacion] INT             NOT NULL,
    [idOperacion]        INT             NOT NULL,
    CONSTRAINT [PK_MovimientoProducto] PRIMARY KEY CLUSTERED ([idMovimientoProd] ASC),
    CONSTRAINT [FK_MovimientoProducto_Almacen] FOREIGN KEY ([idAlmacen]) REFERENCES [dbo].[Almacen] ([idAlmacen]),
    CONSTRAINT [FK_MovimientoProducto_Producto] FOREIGN KEY ([IdProducto]) REFERENCES [dbo].[Producto] ([idProducto])
);

