*************
Quoting stuff
*************

(optional or no)


SQLite is a flexible, friendly language, in that it will treat the following quoting conventions as equal, when it comes to a table named ``person``:


- SELECT name FROM "person";
- SELECT name FROM [person]
- SELECT name FROM `person`


However, since it's best to be consistent, and to make it convenient to someday migrate to PostgreSQL, I highly recommend sticking with PostgreSQL's convention

