SELECT * FROM users;
SELECT * FROM photos;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
);

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(200) NOT NULL,
  user_id INTEGER REFERENCES users(id)
);

INSERT INTO users (username) VALUES ('Luis7'), ('Messi10'), ('Steven8'), ('Torres9');

-- INSERT INTO photos (url, user_id) VALUES ('url 788', 1);
INSERT INTO photos (url, user_id) VALUES ('url1', 1), ('url2', 2), ('url3', 3), ('url4', 4);

SELECT url FROM photos WHERE user_id = 1;

SELECT url, username FROM photos JOIN users ON users.id = photos.user_id WHERE user_id = 1;