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
SELECT count(DISTINCT city) FROM Suppliers;
-- 연습2: Suppliers 의 country 컬럼의 값이 중복없이 몇 개 있는지?
SELECT count(DISTINCT country) FROM Suppliers;

-- 연습3 : Seafood가 몇 번 주문되었는 지 조회





