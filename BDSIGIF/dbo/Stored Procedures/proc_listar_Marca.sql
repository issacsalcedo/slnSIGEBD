 
GO

CREATE procedure [dbo].[proc_listar_Marca]
@IdMarca  int ,
@DescripcionMarca varchar(85),
@NombreMarca varchar(85),
@EstadoRegistro char(1),
@Codigo varchar(20)
as
begin
set @EstadoRegistro=case when @EstadoRegistro='' then null else @EstadoRegistro end ;
select 
c.DescripcionMarca,
c.NombreMarca,
c.IdMarca,
c.CodigoMarca,
c.EstadoRegistro
from  Marca c
where 
	c.IdMarca=case when @IdMarca=0 then c.IdMarca
	else @IdMarca end 
and  (EstadoRegistro=isnull(@EstadoRegistro,EstadoRegistro) ) 
and (c.DescripcionMarca like '%' +@DescripcionMarca+'%' )
and (c.NombreMarca like '%' +@NombreMarca+'%' )
end 
GO