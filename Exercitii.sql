--EX 4
SELECT * FROM Product;

--EX 5
SELECT * FROM Customer WHERE CustomerEmail LIKE '%@wantsome.ro';

--EX 6
SELECT CategoryName, SUM(ProductPrice) AS Total 
	FROM Product p LEFT JOIN Category c ON p.CategoryID=c.CategoryID
	GROUP BY CategoryName;

--EX 7
SELECT CustomerName, COUNT(OrderNumber) AS Comenzi
	FROM Customer c JOIN Orders o ON c.CustomerID=o.CustomerID
	GROUP BY CustomerName
	HAVING COUNT(o.OrderNumber)>10;

--EX 8
CREATE OR ALTER VIEW CustomerProducts AS
	SELECT CustomerName, p.ProductID, ProductName, OrderDate
	FROM Product p JOIN OrderProduct op ON p.ProductID=op.ProductID
				   JOIN Orders o ON op.OrderID=o.OrderID
				   JOIN Customer c ON o.CustomerID=c.CustomerID
	GROUP BY CustomerName, ProductName, p.ProductID, OrderDate;

SELECT CustomerName, ProductName FROM CustomerProducts;

--EX 9
SELECT CustomerName 
	FROM CustomerProducts 
	WHERE OrderDate BETWEEN '2019-01-01' AND '2019-01-03' 
	GROUP BY CustomerName;

SELECT CustomerName, CategoryName 
		FROM CustomerProducts cp 
					JOIN Product p ON cp.ProductID = p.ProductID
					JOIN Category c ON p.CategoryID=c.CategoryID
		WHERE CategoryName = 'Wood';

--EX 10
CREATE OR ALTER PROCEDURE AlterOrderStatus (@OrderID INT, @OrderStatus BIT)
AS
	UPDATE Orders SET OrderStatus=@OrderStatus 
	WHERE OrderID=@OrderID;
GO

EXEC AlterOrderStatus @OrderID = 1, @OrderStatus = 0;

SELECT TOP 1 * FROM Orders;

--EX 11
SELECT ProductName, SUM(ProductPrice) AS Total
	FROM Product p JOIN OrderProduct op ON p.ProductID=op.ProductID
	GROUP BY ProductName;
