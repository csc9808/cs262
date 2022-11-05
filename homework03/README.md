# CS 262 - Homework 3: Information Systems

This [homework exercise](https://cs.calvin.edu/courses/cs/262/kvlinden/09is/homework.html) is based on Prof. Keith VanderLinden's monopoly-client repository
[here](https://cs.calvin.edu/courses/cs/262/kvlinden/06hci/homework.html).

Notes : Worked Homework 03 along with GunJu Yoo (gy24)

- The database used in this homework is from my [lab09](https://github.com/csc9808/cs262/tree/main/lab09) found on Heroku

## Questions

- What are the (active) URLs for your data service?

    - https://calm-hollows-57574.herokuapp.com/
    - https://calm-hollows-57574.herokuapp.com/players
    - https://calm-hollows-57574.herokuapp.com/players/1
    - https://calm-hollows-57574.herokuapp.com/playerGame

- Which of these endpoints implement actions that are idempotent (put get delete)? nullipotent (post)?

  - Idempotent are the ones that `post` and `delete`, so "/players/:id"
  - Nullipotent are the ones that `put` and `get`, so "/", "/players", "/players:id", and "/playerGame"

- Is the service RESTful? If not, why not? If so, what key features make it RESTful.

  - Yes, it's RESTful because it supports: resource methods like `GET`, `POST`, `PUT`, `DELETE`. It's also stateless, meaning it doesn't use login sessions. It also gives error messages at time when there is a typo. For instance, let's say there is a typo in my `get` function. The "internal service error" shoud show up and which informs me to fix it.

- Is there any evidence in your implementation of an impedance mismatch?
  - I don't think so, at least not as far as right now as I don't see any. 