 
CREATE procedure [dbo].[proc_ins_producto]
	@idProducto	int	,
	@nombreProducto	nvarchar(100)	,
	@IdModelo	smallint	,
	@IdCategoria	smallint	,
	@Idmarca	smallint	,
	@descripcion	nvarchar(200)	,
	@precioCompra	decimal(18, 3)	,
	@precioVenta	decimal(18, 3)	,
	@stock	decimal(10, 3)	,
	@stockMin	decimal(10, 3)=45	,
	@fechaVencimiento	datetime	  
	 

as
begin

select   @idProducto=isnull(max(idProducto),0)+1 from Producto
		INSERT INTO [dbo].[Producto]
		([idProducto]
		,[nombreProducto]
		,[IdModelo]
		,[IdCategoria]
		,[Idmarca]
		,[descripcion]
		,[precioCompra]
		,[precioVenta]
		,[stock]
		,[stockMin]
		,[fechaVencimiento])
		VALUES
		(
	  	 @idProducto
		,@nombreProducto
		,@IdModelo
		,@IdCategoria
		,@Idmarca
		,@descripcion
		,@precioCompra
		,@precioVenta
		,@stock
		,@stockMin
		,@fechaVencimiento
		)
 
 SELECT @idProducto

end 

