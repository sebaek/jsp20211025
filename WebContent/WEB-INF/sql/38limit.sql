USE test;

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3; -- 위에서 3개

SELECT * FROM Products
ORDER BY Price ASC
LIMIT 3;

-- 연습 1 : 가장 늦게 태어난 직원 3명 조회 
SELECT * FROM Employees
ORDER BY BirthDate DESC
LIMIT 3
;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 5; 
-- 첫번째수:시작 위치
-- 두번째수:개수

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 5, 5;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 5;

-- page 처리 활용
-- 한 페이지에 10개의 데이터 조회
-- 1 페이지 LIMIT 0, 10
-- 2 페이지 LIMIT 10, 10
-- 3 페이지 LIMIT 20, 10
-- .....
-- n 페이지 LIMIT (n-1)*10, 10








