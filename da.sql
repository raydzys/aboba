INSERT INTO cities (id, name_rus, name_eng) 
VALUES ('3', 'Тарков', 'Tarkov'), ('4', 'Омск', 'Omsk'), ('5', 'Иркутск', 'Irkutsk');

UPDATE users SET city = 2 WHERE id in(1, 2, 5);
UPDATE users SET city = 4 WHERE id in(3, 4, 7);
UPDATE users SET city = 1 WHERE id in(8);
UPDATE users SET city = 5 WHERE id in(9);
UPDATE users SET city = 3 WHERE id in(10,6);

ALTER TABLE users ADD age INT(299) AFTER birth_day;

UPDATE users SET age = 23 WHERE id in(1);
UPDATE users SET age = 44 WHERE id in(2);
UPDATE users SET age = 55 WHERE id in(3);
UPDATE users SET age = 34 WHERE id in(4);
UPDATE users SET age = 27 WHERE id in(5);
UPDATE users SET age = 26 WHERE id in(6);
UPDATE users SET age = 21 WHERE id in(7);
UPDATE users SET age = 75 WHERE id in(8);
UPDATE users SET age = 54 WHERE id in(9);
UPDATE users SET age = 34 WHERE id in(10);


SELECT AVG(age) AS average_age, MAX(age) AS stari, MIN(age) AS jung 
FROM users WHERE city = 1;
SELECT AVG(age) AS average_age, MAX(age) AS stari, MIN(age) AS jung  
FROM users WHERE city = 2;
SELECT AVG(age) AS average_age, MAX(age) AS stari, MIN(age) AS jung  
FROM users WHERE city = 3;
SELECT AVG(age) AS average_age, MAX(age) AS stari, MIN(age) AS jung  
FROM users WHERE city = 4;
SELECT AVG(age) AS average_age, MAX(age) AS stari, MIN(age) AS jung  
FROM users WHERE city = 5;

///or

SELECT city, MAX(age) AS 'max wosrast' FROM users GROUP BY city;
SELECT city, MIN(age) AS 'min wosrast' FROM users GROUP BY city;
SELECT city, AVG(age) AS 'average wosrast' FROM users GROUP BY city;
