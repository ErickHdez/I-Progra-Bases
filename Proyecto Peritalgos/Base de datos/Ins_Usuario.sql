USE ExamWeb

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ins_Usuario]
(
@NombUsuar VARCHAR(20),
@Contraseņa VARCHAR(20),
@CodTipoUsua VARCHAR(20),
@Seccion VARCHAR(10)
) 
AS INSERT INTO usuarios
(
cnombralum, ccontrase, ccodtipusu, cseccion
)
VALUES
(
@NombUsuar, @Contraseņa, @CodTipoUsua, @Seccion
)

GO
