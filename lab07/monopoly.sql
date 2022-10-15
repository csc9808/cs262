--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
--@edited by Seong Chan Cho (sc7)

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerBuilding;
DROP TABLE IF EXISTS PlayerProperty;
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;

-- Create the schema.
CREATE TABLE Game (
	ID integer PRIMARY KEY, 
	time timestamp
	);

CREATE TABLE Player (
	ID integer PRIMARY KEY, 
	emailAddress varchar(50) NOT NULL,
	name varchar(50)
	);

CREATE TABLE PlayerGame (
	gameID integer REFERENCES Game(ID), 
	playerID integer REFERENCES Player(ID),
	score integer,
	cash integer,
	currentLocation varchar(50)
	);

CREATE TABLE PlayerProperty (
	gameID integer REFERENCES Game(ID),
	playerID integer REFERENCES Player(ID),
	propertyName varchar(50)
	);

CREATE TABLE PlayerBuilding (
	gameID integer REFERENCES Game(ID),
	playerID integer REFERENCES Player(ID),
	buildingType varchar(5),				-- "house" or "hotel"
	quantity integer,
	propertyName varchar(50)
	);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
GRANT SELECT ON PlayerProperty TO PUBLIC;
GRANT SELECT ON PlayerBuilding TO PUBLIC;

-- Add sample records.
INSERT INTO Game VALUES (1, '2006-06-27 08:00:00');
INSERT INTO Game VALUES (2, '2006-06-28 13:20:00');
INSERT INTO Game VALUES (3, '2006-06-29 18:41:00');
INSERT INTO Game VALUES (4, '2022-10-15 17:15:00');

INSERT INTO Player(ID, emailAddress) VALUES (1, 'me@calvin.edu');
INSERT INTO Player(ID, emailAddress, name) VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player(ID, emailAddress, name) VALUES (3, 'dog@gmail.edu', 'Dogbreath');
INSERT INTO Player VALUES (4, 'sc77@calvin.edu', 'Seong Chan Cho');

INSERT INTO PlayerGame VALUES (1, 1, 0.00);
INSERT INTO PlayerGame VALUES (1, 2, 0.00);
INSERT INTO PlayerGame VALUES (3, 2, 0.00);
INSERT INTO PlayerGame VALUES (3, 3, 500.00);
INSERT INTO PlayerGame VALUES (4, 2, 100.00, 1567.00, 'Jail');
INSERT INTO PlayerGame VALUES (4, 3, 275.00, 1900.00, 'GO');


INSERT INTO PlayerProperty VALUES (4, 1, 'Pacific-Avenue');
INSERT INTO PlayerProperty VALUES (4, 3, 'Kentucky-Avenue');
INSERT INTO PlayerProperty VALUES (4, 3, 'Indiana-Avenue');
INSERT INTO PlayerProperty VALUES (4, 4, 'Mediterranean-Avenue');


INSERT INTO PlayerBuilding VALUES (4, 1, 'house', 2, 'Pacific-Avenue');
INSERT INTO PlayerBuilding VALUES (4, 3, 'hotel', 1, 'Kentucky-Avenue');
INSERT INTO PlayerBuilding VALUES (4, 3, 'hotel', 1, 'Indiana-Avenue');
INSERT INTO PlayerBuilding VALUES (4, 4, 'house', 1, 'Mediterranean-Avenue');

