
CREATE procedure [dbo].[proc_listar_Modelo]
@IdModelo  int ,
@DescripcionModelo varchar(85),
@NombreModelo varchar(85),
@EstadoRegistro char(1),
@Codigo varchar(20)
as
begin

select 
c.DescripcionModelo,
c.IdModelo,
c.CodigoModelo,
c.NombreModelo,
c.EstadoRegistro
from  Modelo c
where 
	c.IdModelo=case when @IdModelo=0 then c.IdModelo
	else @IdModelo end 
and  (EstadoRegistro= @EstadoRegistro or @EstadoRegistro='' ) 
and (c.DescripcionModelo like '%' +@DescripcionModelo+'%' )
and (c.NombreModelo like '%' +@NombreModelo+'%' )
and (c.CodigoModelo like '%' +@Codigo+'%' )
end 
 