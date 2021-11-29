USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

-- 컬럼의 수가 같은 조회 결과의 합집합
SELECT firstName FROM mytable27Customer

UNION

SELECT lastName FROM mytable27Customer;

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('ji', 'sj');

-- 중복된 값도 조회
SELECT firstName FROM mytable27Customer
UNION ALL
SELECT lastName FROM mytable27Customer;


