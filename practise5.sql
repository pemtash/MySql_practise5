# DATABASE CONSTRAINTS
# Not Null Constraints
# a) create a not null column

use pem;
show tables;
CREATE TABLE IF NOT EXISTS Books (bookname varchar(50) NOT NULL);
DESC BOOKS;
# CREATE TABLE IF NOT EXISTS Books (bookname varchar(50) NOT NULL, author char(20));
#17:20:07	CREATE TABLE IF NOT EXISTS Books (bookname varchar(50) NOT NULL, author char(20))	0 row(s) affected, 1 warning(s): 1050 Table 'books' already exists	0.000 sec

#ALTER TABLE BOOKS ADD AUTHOR CHAR(20), PRICE INT(10);
# 17:25:33	ALTER TABLE BOOKS ADD AUTHOR CHAR(20), PRICE INT(20)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRICE INT(20)' at line 1	0.000 sec

# add a not null constraint to a column:
SELECT * FROM CUSTOMERS;
SELECT * FROM PARTICIPANTS;
INSERT INTO PARTICIPANTS VALUES ('TASHI', 27, 'MALE');
SELECT * FROM PARTICIPANTS;
ALTER TABLE PARTICIPANTS MODIFY NAME CHAR(20) NOT NULL;
DESC PARTICIPANTS;
# we can see that name column is not null;

# remove a not null constraint from a column; 
ALTER TABLE PARTICIPANTS MODIFY NAME CHAR(20);
DESC PARTICIPANTS;
# we now see that not null contraints is lost;

# UNIQUE CONSTRAINTS;
# a) create a coulumn with unique data;
CREATE TABLE IF NOT EXISTS GAMES ( GAMENAME VARCHAR(20), GAMEID INT(20) NOT NULL,
GAMERID INT(20) UNIQUE );
SELECT * FROM GAMES;
DESC GAMES;
#  here we see that GAMEID is NOT NULL and GAMERID is UNIQUE

ALTER TABLE GAMES MODIFY GAMEID INT(20) UNIQUE;
DESC GAMES;
#  we see that GAMEID is now to UNIQUE;

# remove a unique contraint from a column;
ALTER TABLE GAMES DROP INDEX GAMERID;
DESC GAMES;
# WHEN WE REMOVE UNIQUE CONSTRAINTS FROM GAMERID WE USE DROP INDEX



