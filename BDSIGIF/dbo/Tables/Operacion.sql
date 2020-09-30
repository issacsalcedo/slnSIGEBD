CREATE TABLE [dbo].[Operacion] (
    [idOperacion]       INT             NOT NULL,
    [idusuario]         INT             NOT NULL,
    [fechaOperacion]    DATETIME        NOT NULL,
    [idproveedor]       INT             NOT NULL,
    [idtipocomprobante] INT             NOT NULL,
    [costoOperacion]    DECIMAL (15, 3) NULL,
    PRIMARY KEY CLUSTERED ([idOperacion] ASC)
);

