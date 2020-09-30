CREATE TABLE [dbo].[Producto] (
    [idProducto]       INT             NOT NULL,
    [nombreProducto]   NVARCHAR (100)  NOT NULL,
    [codigo]           VARCHAR (10)    NULL,
    [IdModelo]         SMALLINT        NULL,
    [IdCategoria]      SMALLINT        NOT NULL,
    [Idmarca]          SMALLINT        NULL,
    [descripcion]      NVARCHAR (200)  NULL,
    [precioCompra]     DECIMAL (18, 3) NOT NULL,
    [precioVenta]      DECIMAL (18, 3) NOT NULL,
    [stock]            DECIMAL (10, 3) NOT NULL,
    [stockMin]         DECIMAL (10, 3) NULL,
    [fechaVencimiento] DATETIME        NULL,
    CONSTRAINT [PK__Producto__07F4A13294BBBBEF] PRIMARY KEY CLUSTERED ([idProducto] ASC),
    CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY ([IdCategoria]) REFERENCES [dbo].[Categoria] ([IdCategoria]),
    CONSTRAINT [FK_Producto_Marca] FOREIGN KEY ([Idmarca]) REFERENCES [dbo].[Marca] ([IdMarca]),
    CONSTRAINT [FK_Producto_Modelo] FOREIGN KEY ([IdModelo]) REFERENCES [dbo].[Modelo] ([idModelo]),
    CONSTRAINT [UQ__Producto__07F4A133A77F1B3A] UNIQUE NONCLUSTERED ([idProducto] ASC)
);

