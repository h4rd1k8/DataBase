CREATE DATABASE lab2;
CREATE TABLE countries (
  country_id SERIAL PRIMARY KEY,
  country_name VARCHAR(250),
  region_id    INT,
  population   INT
);

SELECT * FROM countries;

INSERT INTO countries VALUES (DEFAULT, 'Taraz', 08, 351353);

INSERT INTO countries VALUES (DEFAULT, 'Almaty');

INSERT INTO countries (region_id) VALUES (NULL);

INSERT INTO countries VALUES (DEFAULT, 'Astana', 1, 814435),
                             (DEFAULT, 'Shymkent', 17, 1000000),
                             (DEFAULT, 'Atyrau', 6, 600000);

SELECT * FROM countries;


















