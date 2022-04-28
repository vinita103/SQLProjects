-- First Step/create database
CREATE DATABASE shirts_db;
-- Second Step/ create table
USE shirts_db;
CREATE TABLE shirts( 
shirt_id INTEGER PRIMARY KEY AUTO_INCREMENT,
article VARCHAR(20) NOT NULL,
color VARCHAR(20) NOT NULL,
shirt_size VARCHAR(5) NOT NULL,
last_worn INTEGER);
DESCRIBE shirts;
-- Third Step/ populating table with data
INSERT INTO shirts(article, color,shirt_size,last_worn)
VALUES('t-shirt','white', 'S' , 10),
('t-shirt','green', 'S' , 200), 
('polo shirt','black', 'M' , 10),
('tank top','blue', 'S' , 50),
('t-shirt','pink', 'S' , 0),
('polo shirt','red', 'M' , 5),
('tank top','white', 'S' , 200),
('tank top','blue', 'M' , 15);
-- Exercise 1/Get all that data in there with a single line
SELECT * FROM shirts;
-- Exercise 2/Add a new shirt, purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts(article, color,shirt_size,last_worn)
VALUES('polo shirt','purple', 'M' , 50);
-- Exercise 3/SELECT all shirts but only print out article and color
SELECT article, color FROM shirts;
-- Exercise 4/SELECT all medium shirts and print out everything but shirt_id
SELECT article,color,shirt_size,last_worn FROM shirts
WHERE shirt_size = 'M';
-- Exercise 5/Update all polo shirts Change their size to L
-- disable safe update mode
SET SQL_SAFE_UPDATES=0;
UPDATE shirts
SET shirt_size ='L'
WHERE article ='polo shirt';
-- Exercise 6/Update the shirt last worn 15 days ago change last_worn to zero ('0')
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;
-- Exercise 7/Update all white shirts and change size to 'XS' and color to 'off white'
UPDATE shirts
SET shirt_size = 'XS', color = 'off white'
WHERE color = 'white';
-- Exercise 8/Delete all old shirts that were last worn 200 days ago
DELETE  FROM shirts
WHERE last_worn = 200;
-- Exercise 9/Delete all tank tops. Your tastes have changed...
DELETE FROM shirts
WHERE article = 'tank top';
-- Exercise 10/Delete all shirts. You are doing some major spring cleaning!
DELETE FROM shirts;
-- Exercise 11/Drop the entire shirts table. 
DROP TABLE shirts;




