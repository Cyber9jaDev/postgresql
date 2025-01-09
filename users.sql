SELECT * FROM users;
SELECT * FROM photos;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
);

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200) NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (username) VALUES ('Luis7'), ('Messi10'), ('Steven8'), ('Torres9');

-- INSERT INTO photos (url, user_id) VALUES ('url 788', 1);
INSERT INTO photos (url, user_id) 
  VALUES 
    ('url 11', 1), 
    ('url 22', 2), 
    ('url 33', 3), 
    ('url 44', 4);
    

SELECT url FROM photos WHERE user_id = 1;

SELECT url, username FROM photos JOIN users ON users.id = photos.user_id WHERE user_id = 1;

DELETE FROM users WHERE id = 1;

DROP TABLE photos;