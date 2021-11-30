USE test;

-- 3개 테이블 조인 (Orders, Customers, Employees)

SELECT c.CustomerName, o.OrderDate, o.EmployeeID, e.LastName, e.FirstName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
ORDER BY 1;
