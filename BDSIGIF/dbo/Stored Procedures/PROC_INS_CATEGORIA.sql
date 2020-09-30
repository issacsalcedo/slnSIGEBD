CREATE PROCEDURE [dbo].[PROC_INS_CATEGORIA]
	@IdCategoria			smallint=0	 ,
	@DescripcionCategoria	varchar(85)	 ,
	@Codigo					char(8)	 ,
	@EstadoRegistro			char(1)	='A' ,
	@usuarioCreacion int

AS
BEGIN
select @IdCategoria=isnull(max(IdCategoria),0)+1 from Categoria
declare @fechaCreacion date =getdate();
INSERT INTO Categoria
(
	  IdCategoria			
	, DescripcionCategoria	
	, Codigo					
	, EstadoRegistro
	, fechaCreacion	
	, usuarioCreacion 		
)
VALUES 
(
	 @IdCategoria			
	,@DescripcionCategoria	
	,@Codigo					
	,@EstadoRegistro
	,@fechaCreacion	
	,@usuarioCreacion		
)
SELECT @IdCategoria
END 
