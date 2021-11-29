USE test;
-- foreign key (외래키, 참조키)

CREATE TABLE mytable27Customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

CREATE TABLE mytable28Tel (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customerId INT,
    tel VARCHAR(255),
    FOREIGN KEY (customerID) REFERENCES mytable27Customer(id)
);

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('hong', 'gildong');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (1, '01099999999');
INSERT INTO mytable28Tel (customerId, tel) VALUES (2, '01088888888');
INSERT INTO mytable28Tel (customerId, tel) VALUES (2, '01077777777');
SELECT * FROM mytable28Tel;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '01066666666'); -- 참조키가 존재하지 않는 오류 발생



