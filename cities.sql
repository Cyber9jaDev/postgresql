INSERT INTO cities (name, country, population, area) 
  VALUES 
    ('CArt', 'AFG', 10000, 17800),
    ('Tokyo', 'Japan', 10000, 17800),
    ('Seoul', 'Korea', 10000, 17800);

SELECT * FROM cities;

-- Use of Math Operators
SELECT name, area / population AS population_density from cities;


