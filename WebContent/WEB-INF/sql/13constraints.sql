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












