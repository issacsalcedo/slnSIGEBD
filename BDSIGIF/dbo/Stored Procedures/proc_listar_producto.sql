
CREATE  procedure proc_listar_producto
	@nombreProducto	nvarchar(100)	,
	@IdModelo	smallint	,
	@IdCategoria	smallint	,
	@Idmarca	smallint	,
	@descripcion	nvarchar(200)	,
	@codigo varchar(20)
as
begin


select 
		 p.idProducto
		,p.nombreProducto
		,p.IdModelo
		,p.IdCategoria
		,p.Idmarca
		,p.descripcion
		,p.precioCompra
		,p.precioVenta
		,p.stock
		,p.stockMin
		,p.fechaVencimiento
		,p.codigo

from Producto p
where 
		(@nombreProducto ='' or p.nombreProducto like +'%'+@nombreProducto+'%'	 	 )
	and (p.IdModelo=	@IdModelo  or @IdModelo 		 =0		 )
	and (p.IdCategoria= @IdCategoria	  or @IdCategoria	 =0)
	and (p.Idmarca = @Idmarca or @Idmarca=0 )
	and (@descripcion='' or p.descripcion like    '%'+@descripcion+'%'	 	 )
	and (@codigo='' or p.codigo like    +'%'+@codigo+'%'	 	 )
end 