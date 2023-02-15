--@block
CREATE DATABASE circus;
--@block
drop DATABASE IF EXISTS circus;
--@block
show DATABASES;
--@block
CREATE DATABASE cryptocurrency;
--@block
DROP DATABASE cryptocurrency;

--@block
CREATE DATABASE land;
--@block
use land;
--@block
CREATE table continent
( continent_id int,
continent_name VARCHAR(20),
population BIGINT
);

--@block
describe continent;

-- constraints --
-- 1. primary key
-- 2. foreign key
-- 3.  not null
-- 4. unique
-- 5. check
-- 6. default 

--------- Exercise -----------
--@block
-- CREATE DATABASE athletic;
-- use athletic;

-- CREATE TABLE sport(
--   sport_id int,
--   sport_name VARCHAR(50),
--   PRIMARY key (sport_id)
-- );

-- DESCRIBE sport;

-- CREATE TABLE player (
--   player_id INT PRIMARY KEY,
--   player_name VARCHAR(50) NOT NULL,
--   sport_id INT NOT NULL,
--   FOREIGN KEY (sport_id) REFERENCES sport(sport_id)
-- );


-- DESCRIBE player;

-- 







