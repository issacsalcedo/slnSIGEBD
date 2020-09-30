CREATE  procedure [dbo].[proc_act_producto]
	@idProducto	int	,
	@nombreProducto	nvarchar(100)	,
	@IdModelo	smallint	,
	@IdCategoria	smallint	,
	@Idmarca	smallint	,
	@descripcion	nvarchar(200)	,
	@precioCompra	decimal(18, 3)	,
	@precioVenta	decimal(18, 3)	,
	@stock	decimal(10, 3)	,
	@stockMin	decimal(10, 3)	,
	@fechaVencimiento	datetime	 
	 

as
begin
 update Producto
		set 
		 idProducto			=@idProducto
		,nombreProducto     =@nombreProducto
		,IdModelo		  	=@IdModelo
		,IdCategoria		=@IdCategoria
		,Idmarca			=@Idmarca
		,descripcion        =@descripcion
		,precioCompra       =@precioCompra
		,precioVenta        =@precioVenta
		,stock				=@stock
		,stockMin			=@stockMin
		,fechaVencimiento   =@fechaVencimiento
		 where idProducto=@idProducto
 
 SELECT @idProducto

end 