# CS 262 - Lab 8

This lab is based on [CS 262 Lab 8](https://cs.calvin.edu/courses/cs/262/kvlinden/08is/lab.html).

Lab 8 contains sample queries to get data.

## Answers to lab questions

### Exercise 8.2

c) So what does that `P1.ID < P2.ID` clause do in the last example query?

P1 and P2 names refer to separate instances of the Player table. Getting the ID from each will compare two ID in the same table, without comparing each ID with only itself. If two names are found to be equal in the table, it will prevent the Player names from being listed twice.

d) The query that joined the Player table to itself seems rather contrived. 
Can you think of a realistic situation in which you’d want to join a table to itself?

Joining a table to itself may be useful when you need to compare rows or fields within a table. It's useful when you are searching for relationships between entries in the table. A realistic situation would be a company's employees list a table, with IDs of the employees that manages them, joining that table to itself can return all manager-employee groups.

## Database Schema

### Tables:

**Player**(ID, emailAddress, name)

**PlayerGame**(gameID, playerID, score, cash, currentLocation)

**Game**(ID, time)

**PlayerProperties**(gameID, playerID, propertyName)

**PlayerBuildings**(gameID, playerID, buildingType, quantity, propertyName)



