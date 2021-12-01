USE test;

SELECT * FROM Products;

SELECT * FROM Products 
WHERE Price >= 10;

SELECT * FROM Products
WHERE Price <= 20;

SELECT * FROM Products
WHERE Price >= 10 AND Price <= 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;