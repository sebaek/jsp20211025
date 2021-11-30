USE test;

-- count: 개수 
-- Customers 테이블의 row 수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(ContactName) FROM Customers; -- null 은 count 안함
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers;

-- 연습1: Suppliers 의 city 컬럼의 값이 중복없이 몇 개 있는지?
-- 연습2: Suppliers 의 country 컬럼의 값이 중복없이 몇 개 있는지?