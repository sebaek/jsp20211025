USE test;

SELECT * FROM mytable27Customer; -- 3, 4, 5, 6
SELECT * FROM mytable28Tel; -- 1, 3, 4

SELECT * FROM mytable27Customer c LEFT OUTER JOIN mytable28Tel t ON c.id = t.customerId;
SELECT * FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId; -- outer 생략 가능