CREATE TABLE [dbo].[DetalleOperacion] (
    [idDetalleOperacion] INT             NOT NULL,
    [idProducto]         INT             NOT NULL,
    [cantidad]           DECIMAL (15, 3) NOT NULL,
    [costoUnidad]        DECIMAL (15, 3) NULL,
    [total]              INT             NULL,
    [idOperacion]        INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([idDetalleOperacion] ASC, [idOperacion] ASC),
    CONSTRAINT [FK_DetalleOperacion_MovimientoProducto] FOREIGN KEY ([idDetalleOperacion]) REFERENCES [dbo].[MovimientoProducto] ([idMovimientoProd]),
    CONSTRAINT [FK_DetalleOperacion_Operacion] FOREIGN KEY ([idOperacion]) REFERENCES [dbo].[Operacion] ([idOperacion])
);

