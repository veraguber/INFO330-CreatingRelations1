CREATE TABLE timeslots (id INTEGER PRIMARY KEY, start DATETIME NOT NULL, end DATETIME NOT NULL);
ALTER TABLE rooms ADD COLUMN id PRIMARY KEY;
CREATE TABLE schedule (coursecode VARCHAR(10) NOT NULL, roomid INTEGER NOT NULL REFERENCES rooms(id), timeslotid INTEGER NOT NULL REFERENCES timeslots(id), CONSTRAINT unique_room_timeslot UNIQUE (roomid, timeslotid));