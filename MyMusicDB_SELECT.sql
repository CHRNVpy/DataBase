SELECT name, year FROM album
WHERE YEAR = '2018';

SELECT name, length FROM track
WHERE length = (SELECT MAX(length) FROM track);

SELECT name FROM track
WHERE length >= '210';

SELECT name FROM collection
WHERE YEAR BETWEEN '2018' AND '2020';

SELECT name FROM artist
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name LIKE '%мой%' OR name LIKE '%my%';

SELECT name FROM track
WHERE name LIKE INITCAP('%hey%');

