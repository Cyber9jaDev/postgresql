INSERT INTO cities (name, country, population, area) 
  VALUES 
    ('Cat', 'AFG', 10000, 1700),
    ('Tokyo', 'Japan', 10000, 1800),
    ('Seoul', 'Korea', 10000, 7800);

SELECT * FROM cities;

-- Use of Math Operators
SELECT name, area / population AS population_density from cities;