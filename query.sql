-- buat database baru
CREATE DATABASE challenge3

-- buat table users
CREATE TABLE users (
id BIGSERIAL PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL
);

-- buat table bio
CREATE TABLE bio (
id BIGSERIAL PRIMARY KEY,
user_id BIGINT NOT NULL,
name VARCHAR(255),
age int
);

-- buat table history
CREATE TABLE history (
id BIGSERIAL PRIMARY KEY,
user_id BIGINT NOT NULL,
score BIGINT NOT NULL,
score_date date
);

-- input data table users
INSERT INTO users (username, password) VALUES
('fais', 'password'),
('lipan', 'password'),
('yusril', 'password'),
('randi', 'password'),
('dian', 'password'),
('ruben', 'password');

-- input data table bio
INSERT INTO bio (user_id, name, age) VALUES
(1, 'Fais', 20),
(2, 'Lipan', 20),
(3, 'Yusril', 20),
(4, 'Randi', 20),
(5, 'Dian', 20),
(6, 'Ruben', 20);

-- input data table history
INSERT INTO history (user_id, score, score_date) VALUES
(1, 100, '2020-01-01'),
(2, 100, '2020-01-01'),
(3, 100, '2020-01-01'),
(4, 100, '2020-01-01'),
(5, 100, '2020-01-01'),
(6, 100, '2020-01-01');

-- read name, age, score, score_date where user_id = 1
SELECT name nama, age umur, score skor, score_date tanggal_skor 
FROM bio 
INNER JOIN history ON bio.user_id = history.user_id 
WHERE bio.user_id = 1;

-- read name, age, score, score_date where user_id = 2
SELECT name nama, age umur, score skor, score_date tanggal_skor 
FROM bio 
INNER JOIN history ON bio.user_id = history.user_id 
WHERE bio.user_id = 2;

-- update table bio name and age where id = 1
UPDATE bio SET name = 'Faisal', age = 19 WHERE id = 1;

-- update table bio name and age where id = 2
UPDATE bio SET name = 'Lifan', age = 30 WHERE id = 2;

-- update table history score where id = 2
UPDATE history SET score = 30 WHERE id = 2;

-- delete history where user_id = 1
DELETE FROM history WHERE user_id = 1;