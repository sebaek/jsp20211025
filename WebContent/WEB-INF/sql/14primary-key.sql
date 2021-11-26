USE test;

-- PRIMARY KEY (기본키, 주키)
-- NOT NULL, UNIQUE

CREATE TABLE mytable17 (
	col1 INT NOT NULL UNIQUE,
    col2 INT
);

DESC mytable17;

CREATE TABLE mytable18 (
	col1 INT PRIMARY KEY,
    col2 INT
);

DESC mytable18;






