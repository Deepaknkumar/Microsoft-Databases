-- Temoporary Tables
CREATE TABLE #Colors
(COLOR VARCHAR(15));

INSERT INTO #Colors
SELECT DISTINCT Color FROM SalesLT.Product;

SELECT * FROM #Colors;

-- Table Variable
DECLARE @Colors AS TABLE (Color VARCHAR(15));

INSERT INTO @Colors
SELECT DISTINCT Color FROM SalesLT.Product;

SELECT * FROM @Colors;

-- NEW Batch
SELECT * FROM #Colors;

SELECT * FROM @Colors; -- out of scope

