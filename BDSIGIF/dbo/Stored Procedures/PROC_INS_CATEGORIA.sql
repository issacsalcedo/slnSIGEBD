 
GO
CREATE PROCEDURE [dbo].[PROC_INS_CATEGORIA]
	@IdCategoria			smallint=0	 ,
	@DescripcionCategoria	varchar(85)	 ,
	@NombreCategoria varchar(85)	 ,
	@Codigo					char(8)	 ,
	@EstadoRegistro			char(1)	='A' ,
	@usuarioCreacion int

AS
BEGIN
select @IdCategoria=isnull(max(IdCategoria),0)+1 from Categoria
declare @fechaCreacion date =getdate();
set @Codigo=right('0000000'+cast(  @IdCategoria as varchar(8)),8)
INSERT INTO Categoria
(
	  IdCategoria			
	, DescripcionCategoria	
	,NombreCategoria
	, Codigo					
	, EstadoRegistro
	, fechaCreacion	
	, usuarioCreacion 		
)
VALUES 
(
	 @IdCategoria			
	,@DescripcionCategoria	
	,@NombreCategoria
	,@Codigo					
	,@EstadoRegistro
	,@fechaCreacion	
	,@usuarioCreacion		
)
SELECT @IdCategoria
END 
GO