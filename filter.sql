INSERT INTO cities (name, area, country, population) VALUES('Ibadan', 1000, 'Nigeria', 5000000);
SELECT * FROM cities;
SELECT name, area FROM cities WHERE area BETWEEN 10000 AND 50000;

-- Cities present in this list 
SELECT name, area FROM cities WHERE name IN ('Tokyo', 'CArt', 'New York');

-- Cities not present in this list
SELECT name, area FROM cities WHERE name NOT IN ('Tokyo', 'Seoul' );

SELECT name, area FROM cities WHERE area NOT IN (11800, 27800) OR name = 'Tokyo';

-- Updating records in a table
UPDATE cities SET area = 50000 WHERE name = 'Tokyo';
