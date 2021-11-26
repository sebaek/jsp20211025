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
