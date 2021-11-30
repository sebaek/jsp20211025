USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) LargestPrice FROM Products; -- AS 생략 가능

-- Employees 테이블에서 가장 이른 생일, 늦은 생일 조회
SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;
