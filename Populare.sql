
INSERT INTO Customer(CustomerName,CustomerEmail) VALUES ('Adrian Mahalu', 'Adrian@wantsome.ro');
INSERT INTO Customer(CustomerName,CustomerEmail) VALUES ('Cristiano Ronaldo', 'CR7@wantsome.ro');
INSERT INTO Customer(CustomerName,CustomerEmail) VALUES ('Harry Kane', 'HK10@gmail.com');
INSERT INTO Customer(CustomerName,CustomerEmail) VALUES ('Paulo Dybala', 'PD10@yahoo.com');
INSERT INTO Customer(CustomerName,CustomerEmail) VALUES ('Gordon Ramsay', 'G.Ramsay@gmail.com');

INSERT INTO Employee(EmployeeName,EmployeeEmail) VALUES ('Employee1' , 'E1@gmail.com');
INSERT INTO Employee(EmployeeName,EmployeeEmail) VALUES ('Employee2' , 'E2@wantsome.ro');
INSERT INTO Employee(EmployeeName,EmployeeEmail) VALUES ('Employee3' , 'E3@wantsome.ro');
INSERT INTO Employee(EmployeeName,EmployeeEmail) VALUES ('Employee4' , 'E3@gmail.com');

INSERT INTO Category(CategoryName,EmployeeID) VALUES ('Wood',1);
INSERT INTO Category(CategoryName,EmployeeID) VALUES ('Rock',2);
INSERT INTO Category(CategoryName,EmployeeID) VALUES ('Brick',2);
INSERT INTO Category(CategoryName,EmployeeID) VALUES ('Tools',3);
INSERT INTO Category(CategoryName,EmployeeID) VALUES ('Transport',4);

INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod1',1,'x',100);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod2',2,'descriptiondasdas',250);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod3',2,'a description',50);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod4',3,'descript',120);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod5',3,'no description',140);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod6',4,'dinosaur',300);
INSERT INTO Product (ProductName,CategoryID,ProductDescription,ProductPrice) VALUES ('Prod7',1,NULL,180);

INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (10,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (11,'2018-02-15',2,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (12,'2019-03-12',2,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (13,'2019-02-01',3,0);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (14,'2019-03-12',3,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (15,'2019-02-23',1,0);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (16,'2019-04-24',4,0);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (17,'2019-06-28',5,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (18,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (19,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (20,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (21,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (22,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (23,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (24,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (25,'2019-01-10',1,1);
INSERT INTO Orders(OrderNumber,OrderDate,CustomerID,OrderStatus) VALUES (26,'2019-01-10',1,1);

INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (1,1,2);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (2,1,4);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (3,2,5);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (4,2,2);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (5,3,1);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (6,4,2);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (7,5,1);
INSERT INTO OrderProduct (OrderID,ProductID,NumberOfProducts) VALUES (8,6,3);