CREATE TABLE timeslots (id INTEGER PRIMARY KEY, start DATETIME NOT NULL, end DATETIME NOT NULL);
ALTER TABLE rooms ADD COLUMN id INTEGER;
--ALTER TABLE rooms ADD CONSTRAINT room_id PRIMARY KEY (id);--
CREATE TABLE schedule (coursecode VARCHAR(10) NOT NULL REFERENCES courses(code), roomid INTEGER NOT NULL REFERENCES rooms(id), timeslotid INTEGER NOT NULL REFERENCES timeslots(id), CONSTRAINT unique_room_timeslot UNIQUE (roomid, timeslotid));

 INSERT INTO timeslots VALUES(1, '10:30:00', '11:20:00');
 INSERT INTO timeslots VALUES(2, '11:30:00', '12:20:00');
 INSERT INTO schedule VALUES('INFO330A', 1, 1)