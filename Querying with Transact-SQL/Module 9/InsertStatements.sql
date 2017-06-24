-- create a table for the demo
CREATE TABLE SalesLT.CallLog(
	CallID INT IDENTITY PRIMARY KEY NOT NULL,
	CallTime DATETIME NOT NULL DEFAULT GETDATE(),
	SalesPerson NVARCHAR(256) NOT NULL,
	CustomerID INT NOT NULL REFERENCES SalesLT.Customer(CustomerID),
	PhoneNumber NVARCHAR(25) NOT NULL,
	Notes NVARCHAR(max) NULL
);
GO

-- Insert a row
INSERT INTO SalesLT.CallLog
VALUES('2015-01-01','adventure-works\pamela0',1,'245-555-0173','Returing call re: enquiry about...')

INSERT INTO SalesLT.CallLog(SalesPerson,CustomerID,PhoneNumber,Notes)
VALUES('Deepak Kumar',7,'250-899-7097','Returing call re: enquiry about...')

SELECT * FROM SalesLT.CallLog;

-- Insert defaults and nulls
INSERT INTO SalesLT.CallLog
VALUES
(DEFAULT, 'adventure-works\david8',2,'170-555-0127',NULL);

SELECT * FROM SalesLT.CallLog;

-- Insert a row with explicit columns
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\jillian0',3,'279-555-0130');

SELECT * FROM SalesLT.CallLog;

-- Insert Multiple rows
INSERT INTO SalesLT.CallLog
VALUES
(DATEADD(mi,-2,GETDATE()),'adventure-works\jillian0',4, '710-555-0173',NULL),
(DEFAULT, 'adventure-works\shu0',5,'828-555-0186','Call to arrange deliver of order 10987');

SELECT * FROM SalesLT.CallLog;

-- INSERT the results of a query
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber, Notes)
SELECT SalesPerson, CustomerID, Phone, 'Sales promotion call'
FROM SalesLT.Customer
WHERE CompanyName = 'Big-Time Bike Store';

SELECT * FROM SalesLT.CallLog;

-- Retrieving inserted identity
INSERT INTO SalesLT.CallLog(SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\jose1',10,'150-555-0127');

SELECT SCOPE_IDENTITY();

SELECT * FROM SalesLT.CallLog;

-- Overriding Identity
SET IDENTITY_INSERT SalesLT.CallLog ON;

INSERT INTO SalesLT.CallLog(CallID,SalesPerson, CustomerID, PhoneNumber)
VALUES
(38,'adventure-works\jose1',12,'151-555-0127');

SET IDENTITY_INSERT SalesLT.CallLog OFF;

SELECT * FROM SalesLT.CallLog;
