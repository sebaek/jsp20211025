SELECT * FROM Customers WHERE CustomerID < 10;

SELECT * FROM Customers WHERE Country = 'Mexico';

-- AND : 두 조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

-- Customers 테이블에서 Country 가 Germany 이고 City가 Berlin 인 행 조회
