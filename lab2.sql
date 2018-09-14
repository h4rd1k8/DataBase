CREATE DATABASE lab2;
CREATE TABLE countries (
  country_id SERIAL PRIMARY KEY,
  country_name VARCHAR(250),
  region_id    INT,
  population   INT
);

SELECT * FROM countries;

INSERT INTO countries VALUES (DEFAULT, 'USA', 08, 351353);

INSERT INTO countries VALUES (DEFAULT, 'China');

INSERT INTO countries (region_id) VALUES (NULL);

INSERT INTO countries VALUES (DEFAULT, 'Russia', 1, 814435),
                             (DEFAULT, 'France', 17, 1000000),
                             (DEFAULT, 'Germany', 6, 600000);

SELECT * FROM countries;

ALTER TABLE countries ALTER COLUMN country_name SET DEFAULT 'Kazakhstan';

INSERT INTO countries (region_id, country_name) VALUES (DEFAULT, DEFAULT);

INSERT INTO countries DEFAULT VALUES;

CREATE TABLE countries_new (
  LIKE countries
);

INSERT INTO countries_new SELECT * FROM countries RETURNING *;

UPDATE countries SET region_id = 1 WHERE region_id IS NULL;

UPDATE countries SET population = population * 1.1 RETURNING country_name, population as "New Population";

DELETE FROM countries WHERE population < 100000;

DELETE FROM countries AS a USING countries_new AS b WHERE a.country_id = b.country_id RETURNING *;

DELETE FROM countries;

SELECT * FROM countries;
SELECT * FROM countries_new;




















