SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 1
;

-- 연습1 : 나라별 Supplier 수 조회


