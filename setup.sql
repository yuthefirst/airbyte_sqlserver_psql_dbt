CREATE DATABASE Demo_DATABASE;
GO

USE Demo_DATABASE;
GO

CREATE TABLE Inventory
(
    ID          INT IDENTITY (1, 1),
    ProductName nvarchar(max),
    Price       numeric(18, 0)
);
GO

INSERT INTO Inventory(ProductName, Price) VALUES ('banana', 150); INSERT INTO Inventory(ProductName, Price) VALUES ('orange', 154);
GO

ALTER TABLE Inventory
ADD PRIMARY KEY (ID);
GO

CREATE TABLE table_customer
(
    customerID INT IDENTITY(1, 1),
    customerName NVARCHAR(100),
    customerAge int CHECK(customerAge > 0)
);
GO

INSERT INTO table_customer(customerName,customerAge) VALUES('John', 30); INSERT INTO table_customer(customerName,customerAge) VALUES('John', 30);
GO

ALTER TABLE table_customer
ADD PRIMARY KEY (customerID);
GO

SELECT * FROM Inventory
GO

SELECT * FROM table_customer
GO

EXEC sys.sp_cdc_enable_db
GO