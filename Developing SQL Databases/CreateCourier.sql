CREATE TABLE SalesLT.Courier(
CourierID int NOT NULL,
CourierCode char(3) NOT NULL,
CourierName nvarchar(50) NOT NULL,
PRIMARY KEY (CourierID, CourierCode)
);
GO

ALTER TABLE SalesLT.Courier
ADD Telephone varchar(15) NULL, Email varchar(25) NULL;
GO