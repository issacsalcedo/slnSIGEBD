
CREATE PROCEDURE [dbo].[PROC_UPD_CATEGORIA]
	@IdCategoria			smallint	 ,
	@DescripcionCategoria	varchar(85)	 ,
	@Codigo					char(8)	 ,
	@EstadoRegistro			char(1)	 ,
	@usuarioModificacion int

AS
BEGIN 
declare @fechaModificacion date =getdate();
UPDATE Categoria
SET 
			 
	DescripcionCategoria	=@DescripcionCategoria	,
	Codigo					=@Codigo			,		
	EstadoRegistro			=@EstadoRegistro	,
	fechaModificacion=@fechaModificacion,
	usuarioModificacion=@usuarioModificacion
	where IdCategoria				=@IdCategoria	
 
 
 SELECT  @@ROWCOUNT
END 
