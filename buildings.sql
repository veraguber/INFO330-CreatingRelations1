CREATE TABLE buildings (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE);
CREATE TABLE rooms (number INTEGER, buildingid INTEGER REFERENCES buildings(id), seating INTEGER);

INSERT INTO buildings (name, shortname) VALUES ('Mary Gates Hall', 'MGH');
INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name='Mary Gates Hall'), 40);