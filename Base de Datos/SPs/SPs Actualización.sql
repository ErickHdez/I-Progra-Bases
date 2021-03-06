USE CampeonatosDB;
GO

CREATE PROCEDURE CASP_EditarCampeonato
	@pID INT,
	@pNombre VARCHAR(100),
	@pFechaInicio DATE,
	@pFechaFin DATE
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.Campeonatos
			SET Nombre = @pNombre,
			FechaInicio = @pFechaInicio,
			FechaFin = @pFechaFin
			WHERE ID = @pID;
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO

CREATE PROCEDURE CASP_EditarCarrera
	@pID INT,
	@pNombre VARCHAR(50),
	@pDescripcion VARCHAR(200),
	@pLugarPartida VARCHAR(100),
	@pLugarLlegada VARCHAR(100),
	@pRecorrido FLOAT,
	@pFecha DATE,
	@pHora TIME,
	@pCosto INT
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.Carreras
			SET Nombre = @pNombre,
			Descripcion = @pDescripcion,
			LugarPartida = @pLugarPartida,
			LugarLlegada = @pLugarLlegada,
			Recorrido = @pRecorrido,
			Fecha = @pFecha
			Hora = @pHora,
			Costo = @pCosto
			WHERE ID = @pID;
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO

CREATE PROCEDURE CASP_EditarCorredor
	@pID INT,
	@pIdentidifacion INT,
	@pNombre VARCHAR(50),
	@pAlias VARCHAR(50),
	@pEmail VARCHAR(100),
	@pGenero VARCHAR(10),
	@pFechaNacimineto DATE
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.Corredores
			SET Identificacion = @pIdentidifacion,
			Nombre = @pNombre,
			Alias = @pAlias,
			Email = @pEmail,
			Genero = @pGenero,
			FechaNacimiento = @pFechaNacimineto
			WHERE ID = @pID;
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO

CREATE PROCEDURE CASP_EditarTipoSancion
	@pID INT,
	@pNombre VARCHAR(50)
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.TipoSancion
			SET Nombre = @pNombre
			WHERE ID = @pID;
		COMMIT TRANSACTION;

		RETURN 1;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO

CREATE PROCEDURE CASP_EditaTipoMovimientoSancion
	@pID INT,
	@pNombre VARCHAR(50)
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.TipoMovimientoSancion
			SET Nombre = @pNombre
			WHERE ID = @pID;
		COMMIT TRANSACTION;

		RETURN 1;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO

CREATE PROCEDURE CASP_EditaTipoMovimientoPuntos
	@pID INT,
	@pNombre VARCHAR(50)
AS
BEGIN
	BEGIN TRY
		SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		BEGIN TRANSACTION
			UPDATE dbo.TipoMovimientoPuntos
			SET Nombre = @pNombre
			WHERE ID = @pID;
		COMMIT TRANSACTION;

		RETURN 1;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		RETURN @@ERROR * -1;
	END CATCH
END
GO