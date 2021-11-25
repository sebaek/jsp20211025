USE test;

-- CHAR
CREATE TABLE mytable1 (
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4) 
VALUES ('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1)
VALUES ('ab'); -- 안됨

INSERT INTO mytable1 (col4)
VALUES ('ab');

-- VARCHAR
CREATE TABLE mytable2 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1, c2, c3, c4) VALUES ('a', 'ab', 'abc', 'abcd');
INSERT INTO mytable2 (c2) VALUES ('abc'); -- X
INSERT INTO mytable2 (c4) VALUES ('ab'); 

SELECT * FROM mytable2;

-- 연습: 2개의 테이블 mytable3, mytable4 만들기
-- VARCHAR, CHAR 타입을 사용










