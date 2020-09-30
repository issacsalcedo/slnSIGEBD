 
 
GO
--comentario
CREATE procedure [dbo].[proc_ins_marca]
	@IdMarca	smallint	, 
	@DescripcionMarca	varchar(85)	 ,
	@NombreMarca varchar(100),
	@CodigoMarca	char(8)	,
	@usuarioCreacion	int	,
	@EstadoRegistro	char(1)	  
	
	
as
begin
select @IdMarca=isnull(max(IdMarca),0)+1 from Marca
declare @fechaCreacion date =getdate();
set @CodigoMarca=right('0000000'+cast(  @IdMarca as varchar(8)),8)
	insert into Marca
	(
		 IdMarca	 	, 
		 DescripcionMarca	  ,
		 usuarioCreacion	 	,
		 CodigoMarca	 ,
		 EstadoRegistro	,
		 fechaCreacion ,
		 NombreMarca
	)
	values
	(
		@IdMarca	 	, 
		@DescripcionMarca	 	 ,
		@usuarioCreacion	 	,
		@CodigoMarca ,
		@EstadoRegistro	  ,
		@fechaCreacion,
		@NombreMarca
	)
	select @IdMarca
end
GO