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