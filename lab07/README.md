# CS 262 - Lab 7 Seong Chan Cho (sc77)

This lab is based on https://cs.calvin.edu/courses/cs/262/kvlinden/07is/lab.html

Using ElephantSQL to create a simple Monopoly database and queries.

## Exercise 1 : Changed tables and relationships

Tables:

Player(ID, emailAddress, name)

PlayerGame(gameID, playerID, score, cash, currentLocation)

Game(ID, time)

**ADDED TABLES**

PlayerProperties(gameID, playerID, propertyName)

PlayerBuildings(gameID, playerID, buildingType, quantity, propertyName)