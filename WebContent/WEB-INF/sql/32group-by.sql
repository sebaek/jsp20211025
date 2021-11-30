SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2 DESC
;

-- 연습1 : 나라별 Supplier 수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country
ORDER BY 2
;

-- 연습2 : 가장 많은 고객이 있는 나라(들) 조회
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MAX(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A)
;

