CREATE DATABASE mid1_preparing;

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) not null,
  rating INT,
  genre VARCHAR(50), not null
);

CREATE TABLE theaters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null,
  size INT not null,
  city VARCHAR(50), not null
)