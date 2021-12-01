USE test;
SELECT * FROM Customers
WHERE Country = 'Germany'
    OR Country = 'Mexico'
    OR Country = 'USA'
;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'USA');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'USA');