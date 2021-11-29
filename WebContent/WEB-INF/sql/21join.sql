USE test;
-- JOIN : 여러 테이블 조합

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('cha', 'bum');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('park', 'ji');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('lee', 'gang');

SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '0101111');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0102222');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0103333');

SELECT * FROM mytable28Tel;

-- join
SELECT * FROM mytable27Customer, mytable28Tel; -- cartesign product (카테시안 곱) ; 조인 조건 없을 시
-- SELECT * FROM mytable28Tel, mytable27Customer; 






