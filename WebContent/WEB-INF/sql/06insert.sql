USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES (94, 'Choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (95, 'Park', 'JiSung', 'Yeoksam', 'Seoul', '77777', 'Korea');

-- 96번째, 97번째 records 추가 sql 작성, 실행

