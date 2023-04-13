 CREATE TABLE courses (code VARCHAR(40) NOT NULL PRIMARY KEY CHECK (LENGTH(code) >= 7), description VARCHAR(400),
 start DATE NOT NULL, end DATE NOT NULL CHECK (end > start));

INSERT INTO courses VALUES ('INFO330A', '2023-04-01', '2023-01-01', 'Data and databases');
INSERT INTO courses VALUES ('INFO314', '2023-04-01', '2023-01-01', 'Networking and distributed Systems');
INSERT INTO courses VALUES ('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS');
INSERT INTO courses VALUES ('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android');
INSERT INTO courses VALUES ('BAW0100', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving');
INSERT INTO courses VALUES ('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');