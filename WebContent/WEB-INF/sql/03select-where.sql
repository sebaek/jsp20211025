SELECT * FROM Customers;

-- WHERE : 조건에 해당하는 행(row, record)만 필터

SELECT * FROM Customers WHERE Country = 'Brazil'; -- sql에서 문자열 작은 따옴표 사용

--  Customers 테이블에서 Country가 France인 행만 조회
SELECT * FROM Customers WHERE Country = 'France';
SELECT * FROM Customers WHERE Country = 'france'; -- 대소문자 구분 안함

-- where에서 사용할 수 있는 연산자들
SELECT * FROM Customers WHERE CustomerID > 50;
SELECT * FROM Customers WHERE CustomerID < 5;

SELECT * FROM Customers WHERE CustomerID >= 89;
SELECT * FROM Customers WHERE CustomerID <= 5;

SELECT * FROM Customers WHERE CustomerID <> 1; -- 같지 않다
SELECT * FROM Customers WHERE CustomerID != 1; -- 같지 않다.

-- Employees 테이블의 EmployeeID를 사용해서 위 연산자 연습




