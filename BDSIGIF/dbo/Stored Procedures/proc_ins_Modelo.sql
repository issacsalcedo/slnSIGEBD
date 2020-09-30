

CREATE procedure [dbo].[proc_ins_Modelo]
	@IdModelo	smallint	=null, 
	@DescripcionModelo	varchar(85)	 ,
	@NombreModelo	varchar(85)	 ,
	@usuarioCreacion	int	,
	@CodigoModelo	char(8)	,
	@EstadoRegistro	char(1)	 
as
begin
select @IdModelo=isnull(max(IdModelo),0)+1 from Modelo
declare @fechaCreacion date =getdate();
set @CodigoModelo=right('0000000'+cast(  @IdModelo as varchar(8)),8)
	insert into Modelo
	(
		 IdModelo	 	, 
		 DescripcionModelo	  ,
		 NombreModelo,
		 usuarioCreacion	 	,
		 CodigoModelo	 ,
		 EstadoRegistro	,
		 fechaCreacion 
	)
	values
	(
		@IdModelo	 	, 
		@DescripcionModelo 	 ,
		@NombreModelo,
		@usuarioCreacion	 	,
		@CodigoModelo ,
		@EstadoRegistro	  ,
		@fechaCreacion
	)

	select @IdModelo;
end