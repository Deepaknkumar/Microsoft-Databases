﻿-- catch an error
BEGIN TRY
	UPDATE SalesLT.Product
	SET ProductNumber = ProductID / ISNULL(Weight,0);
END TRY
BEGIN CATCH
	PRINT 'The following error occured:';
	PRINT ERROR_MESSAGE();
END CATCH

-- Catch and rethrow
BEGIN TRY
	UPDATE SalesLT.Product
	SET ProductNumber = ProductID/ ISNULL(Weight,0);
END TRY
BEGIN CATCH
	PRINT 'The following error occured:';
	PRINT ERROR_MESSAGE();
	THROW;
END CATCH;

-- Catch , Log and throw a custom error
BEGIN TRY
	UPDATE SalesLT.Product
	SET ProductNumber = ProductID / ISNULL(Weight,0);
END TRY
BEGIN CATCH
	DECLARE @ErrorLogID AS INT, @ErrorMsg AS VARCHAR(250);
	EXECUTE dbo.uspLogError @ErrorLogID OUTPUT;
	SET @ErrorMsg = 'The update failed because of an error. View error #' + CAST(@ErrorLogID AS VARCHAR) 
	+ ' in the error log for details';
	THROW 50001, @ErrorMsg, 0;
END CATCH;

-- View the error log
SELECT * FROM dbo.ErrorLog;