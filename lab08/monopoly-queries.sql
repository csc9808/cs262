-- This SQL script implements sample queries on the Monopoly database.
-- Seong Chan Cho
-- CS262: lab08
-- Professor: Kieth Vanderlinden
-- October 21,2022


------------------------------------------------- Exercise 8.1 -------------------------------------------------
-- Single-Table Queries
-- Get list of all games, ordered by date with most recent game first
SELECT * 
  FROM Game
  ORDER BY time DESC
  ;

-- Get all games that occured in the past week
SELECT *
  FROM Game
  WHERE time >= NOW() - INTERVAL '7 days'
  ;

-- Get list of players who have non-NULL names
SELECT *
  FROM Player
  WHERE name IS NOT NULL
  ;

-- Get list of IDs for players who have some game score > 2000
SELECT playerID
  FROM PlayerGame
  WHERE score > 2000
  ;

-- Get list of players who have GMail accounts
SELECT *
  FROM Player
  WHERE emailAddress LIKE '%gmail%'
  ;

------------------------------------------------- Exercise 8.2 -------------------------------------------------
-- Multiple-Table Queries
-- Get all "The King"'s game scores in decreasing order
SELECT score
  FROM Player, PlayerGame
  WHERE ID = playerID
    AND name = 'The King'
  ORDER BY score DESC
  ;


-- Get the name of the winner of the game played on 2006-06-28 13:20:00
SELECT name
  FROM Player, Game, PlayerGame
  WHERE time = '2006-06-28 13:20:00'
    AND playerID = Player.ID
    AND gameID = Game.ID
  ORDER BY score DESC
  LIMIT 1
  ;

