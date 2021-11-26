USE test;

-- not null
CREATE TABLE mytable12 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable12;

INSERT INTO mytable12 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable12 (col2) VALUES ('ghi');
INSERT INTO mytable12 (col1) VALUES ('jkl');

-- UNIQUE

CREATE TABLE mytable13 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) UNIQUE
);

SELECT * FROM mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'de');
INSERT INTO mytable13 (col1) VALUES ('abc');
INSERT INTO mytable13 (col1) VALUES ('abc');

-- NOT NULL, UNIQUE
CREATE TABLE mytable14 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable14;
INSERT INTO mytable14 (col1, col2) VALUES ('a', 'b');

-- CHECK
CREATE TABLE mytable15 (
	col1 INT,
    col2 INT CHECK (col2 >= 100 AND col2 <= 200)
);
SELECT * FROM mytable15;
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 100);
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 300);











