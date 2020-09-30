 
GO

CREATE procedure [dbo].[proc_upd_marca]
	@IdMarca	smallint	, 
	@DescripcionMarca	varchar(85)	 ,
	@NombreMarca varchar(100),
	@CodigoMarca	char(8)	,
	@EstadoRegistro	char(1)	,
	@usuarioModificacion	int	
	
	 
as
begin

declare @fechaModificacion date =getdate();
update Marca
set 
NombreMarca=@NombreMarca,
DescripcionMarca	=@DescripcionMarca				  ,
usuarioModificacion=@usuarioModificacion,					 
EstadoRegistro=@EstadoRegistro						,
fechaModificacion=	@fechaModificacion	
where IdMarca=@IdMarca
end
GO