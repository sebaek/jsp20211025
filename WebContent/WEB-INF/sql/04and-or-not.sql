SELECT * FROM Customers WHERE CustomerID < 10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- AND : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행 조회
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행의 CustomerName 조회
SELECT CustomerName FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- OR : 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City = 'Paris' OR Country = 'UK';


-- Customers 테이블에서 Country 가 Gernamy 이거나 Country 가 Spain 인 행 조회












