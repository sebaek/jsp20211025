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


-- 연습1 : 국가가 'USA', 'UK'인 Supplier들 조회 (IN 키워드 사용)

-- 연습1 : 국가가 'USA', 'UK'가 아닌 Supplier들 조회 (NOT IN 키워드 사용)



