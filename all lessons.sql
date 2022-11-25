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

ALTER TABLE people ADD pass VARCHAR(32);

ALTER TABLE people DROP COLUMN pass;



