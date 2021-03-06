SELECT Country, count(CustomerID) people FROM Customers
GROUP BY Country
HAVING count(CustomerID) >= 10 -- people 가능
;

-- 연습1 : 주문을 한 번만 한 사람들 조회 (CustomerName)
-- table : Orders, Customers
SELECT o.CustomerID, c.CustomerName, count(OrderID) 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1
;

-- 연습2 : 주문을 한번만 또는 한번도안한(0) 고객들 조회 (CustomerID, CustomerName, 주문수)
SELECT c.CustomerID, c.CustomerName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) <= 1
ORDER BY count, c.CustomerId
;

-- 연습3 : 주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, count(o.OrderID)
FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1
;


-- 
SELECT 
    Country, City, COUNT(CustomerID)
FROM
    Customers
GROUP BY Country , City;



