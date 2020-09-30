
CREATE procedure [dbo].[proc_upd_Modelo]
	@IdModelo	smallint	, 
	@DescripcionModelo	varchar(85)	 ,
	@NombreModelo varchar(85)	 ,
	@usuarioModificacion	int	,
	@CodigoModelo	char(8)	,
	@EstadoRegistro	char(1)	 
as
begin

declare @fechaModificacion date =getdate();
update Modelo
set 

DescripcionModelo	=@DescripcionModelo				  ,
NombreModelo=@NombreModelo,
usuarioModificacion=@usuarioModificacion,					 
EstadoRegistro=@EstadoRegistro						,
fechaModificacion=	@fechaModificacion	
where IdModelo=@IdModelo

select @IdModelo
end