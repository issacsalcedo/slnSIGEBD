
CREATE procedure [dbo].[proc_ins_marca]
	@IdMarca	smallint	, 
	@DescripcionMarca	varchar(85)	 ,
	@CodigoMarca	char(8)	,
	@usuarioCreacion	int	,
	@EstadoRegistro	char(1)	  
	
	
as
begin
select @IdMarca=isnull(max(IdMarca),0)+1 from Marca
declare @fechaCreacion date =getdate();

	insert into Marca
	(
		 IdMarca	 	, 
		 DescripcionMarca	  ,
		 usuarioCreacion	 	,
		 CodigoMarca	 ,
		 EstadoRegistro	,
		 fechaCreacion 
	)
	values
	(
		@IdMarca	 	, 
		@DescripcionMarca	 	 ,
		@usuarioCreacion	 	,
		@CodigoMarca ,
		@EstadoRegistro	  ,
		@fechaCreacion
	)

end