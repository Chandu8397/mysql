CREATE DATABASE sonic;

USE sonic;

CREATE TABLE cars(id INT PRIMARY KEY AUTO_INCREMENT, NAME VARCHAR(255), price INTEGER);

INSERT INTO cars(NAME, price) VALUES('Audi', 52642);
INSERT INTO cars(NAME, price) VALUES('Mercedes', 57127);
INSERT INTO cars(NAME, price) VALUES('Skoda', 9000);
INSERT INTO cars(NAME, price) VALUES('Volvo', 29000);
INSERT INTO cars(NAME, price) VALUES('Bentley', 350000);
INSERT INTO cars(NAME, price) VALUES('Citrogen', 21000);
INSERT INTO cars(NAME, price) VALUES('Hummer', 41400);
INSERT INTO cars(NAME, price) VALUES('Volkswagen', 21600);
INSERT INTO cars(NAME, price) VALUES('Tata', 150000);

SELECT * FROM cars;