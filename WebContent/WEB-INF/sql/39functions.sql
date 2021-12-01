USE test;

-- CONCAT : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr; 

SELECT EmployeeID, concat(LastName, ' ' ,FirstName) Name, BirthDate, Notes FROM Employees;