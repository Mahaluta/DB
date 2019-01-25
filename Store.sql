CREATE TABLE Customer (
CustomerID INT identity(1,1) PRIMARY KEY,
CustomerName varchar(20) NOT NULL,
CustomerEmail varchar(30) NOT NULL )

CREATE TABLE Employee (
EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName VARCHAR(20) NOT NULL,
EmployeeEmail VARCHAR(30) NOT NULL )

CREATE TABLE Category (
CategoryID INT IDENTITY(1,1) PRIMARY KEY,
CategoryName VARCHAR(10) NOT NULL,
EmployeeID INT NOT NULL,
CONSTRAINT FK_Category_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) )

CREATE TABLE Product (
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(20) NOT NULL,
CategoryID INT NOT NULL,
ProductDescription VARCHAR(100),
ProductPrice INT NOT NULL,
CONSTRAINT FK_Product_CategoryID FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) )


CREATE TABLE Orders ( 
OrderID INT IDENTITY(1,1) PRIMARY KEY,
OrderNumber INT NOT NULL,
OrderDate DATE NOT NULL,
CustomerID INT NOT NULL,
OrderStatus BIT NOT NULL,
CONSTRAINT FK_Comanda_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) )


CREATE TABLE OrderProduct (
OrderID INT NOT NULL,
ProductID INT NOT NULL,
NumberOfProducts INT NOT NULL,
CONSTRAINT PK_OrderProduct PRIMARY KEY(OrderID,ProductID),
CONSTRAINT FK_OrderProduct_Order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
CONSTRAINT FK_OrderProduct_Product FOREIGN KEY (ProductID) REFERENCES Product(ProductID) )