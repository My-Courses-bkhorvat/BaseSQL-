/*Lesson 1*/

CREATE
DATABASE shop;
DROP
DATABASE shop;

CREATE TABLE users
(
    id INT
);

DROP TABLE users;

CREATE TABLE people
(
    id        INT NOT NULL AUTO_INCREMENT,
    name      VARCHAR(30),
    email     VARCHAR(40),
    biography TEXT,
    birthdate DATE,
    PRIMARY KEY (id)
);

ALTER TABLE people
    ADD pass VARCHAR(32);

ALTER TABLE people DROP COLUMN pass;

/*Lesson 2*/

INSERT INTO people (name, email, biography, birthdate)
VALUES ('Bogdan', 'admin@gmail.com', 'php developer', '2022-11-25');

INSERT INTO people (name, email)
VALUES ('Ania', 'ania@gmail.com')

ALTER TABLE people CHANGE birthdate birth DATE NOT NULL;

INSERT INTO people (name, birth)
VALUES ('Andrii', '1990-08-10');

ALTER TABLE people CHANGE biography bio TEXT;

INSERT INTO people (name, email, bio, birth)
VALUES ('Bogdan', 'bogdan@gmail.com', 'developer', '2000-10-01'),
       ('Pavel', 'Pavel@gmail.com', 'developer', '2000-10-01'),
       ('Vladyslava', 'Vladyslava@gmail.com', 'developer', '2000-10-01');

UPDATE `people`
SET `name` = 'Maks'
WHERE `id` = 3;

UPDATE people
SET name  = 'Kinga',
    email = 'kinga@gmail.com'
WHERE name = 'Ania';

UPDATE people
SET bio   = 'teamlead',
    birth = '2005-05-01'
WHERE id > 3;

UPDATE people
SET bio = 'showman'
WHERE name = 'Bogdan'
  AND id = 1;






