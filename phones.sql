-- Calculating phone revenue
CREATE TABLE phones (
  name VARCHAR(50),  
  manufacturer VARCHAR(50),
  price INT,
  units_sold INT
);

INSERT INTO phones (name, manufacturer, price, units_sold) 
  VALUES
    ('iPhone 6', 'Apple', 700, 1000),
    ('Galaxy S6', 'Samsung', 600, 1500),
    ('One M9', 'HTC', 650, 800);

SELECT name, price * units_sold AS revenue FROM phones;
