 
GO
CREATE procedure [dbo].[proc_listar_categoria]
@IdCategoria  int ,
@DescripcionCategoria varchar(85),
@NombreCategoria varchar(85),
@EstadoRegistro char(1),
@Codigo varchar(10)

as
begin
set @EstadoRegistro= case @EstadoRegistro when '' then null else @EstadoRegistro end ;
select 
	c.DescripcionCategoria , 
	c.IdCategoria,
	c.Codigo ,
	c.NombreCategoria,
	c.EstadoRegistro 
from  Categoria c
where 
1=	 case when @IdCategoria=0 then 1 when   c.IdCategoria=@IdCategoria  then 1 else 0 end 
and  (EstadoRegistro=isnull(@EstadoRegistro,EstadoRegistro) ) 
and (c.DescripcionCategoria like '%' +@DescripcionCategoria+'%' )
and (c.NombreCategoria like '%' +@NombreCategoria+'%' )
and (c.Codigo like '%' +@Codigo+'%' )
end 
GO