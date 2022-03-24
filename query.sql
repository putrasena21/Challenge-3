-- #buat database baru
CREATE DATABASE challenge3

-- #buat table users
CREATE TABLE users (
id BIGSERIAL PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL
);

-- #buat table bio
CREATE TABLE bio (
id BIGSERIAL PRIMARY KEY,
user_id BIGINT NOT NULL,
name VARCHAR(255),
age int
);

-- #buat table history
CREATE TABLE history (
id BIGSERIAL PRIMARY KEY,
user_id BIGINT NOT NULL,
score BIGINT NOT NULL,
score_date date
);