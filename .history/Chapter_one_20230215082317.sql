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

--@block
CREATE table contact
(
  contact_id int PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  city VARCHAR(50),
  phone VARCHAR(20),
  email_address VARCHAR(50) UNIQUE
);
--@block
DESCRIBE contact;
--@block
ALTER table contact
modify email_address varchar(50) UNIQUE;

--@block
CREATE table high_temperature
(
  city VARCHAR(50),
  year int,
  high_temperature int,
  CONSTRAINT CHECK (year BETWEEN 1880 and 2200),
  CONSTRAINT check (high_temperature < 200),
  PRIMARY key (city,year)
);

--@block
DESCRIBE high_temperature;

--@block
CREATE table job
( 
  job_id int,
  job_desc varchar(100),
  shift varchar(50) DEFAULT '9-5',
  PRIMARY key (job_id)
 )
--@block
describe job;

--@block
show DATABASES;

-- indexes help table to speed up the process of retrieving  
-- data.
--@block
use sql_intro;
--@block
create table product (product_id int, product_name VARCHAR(100), supplier_id int);
--@block
DESCRIBE product;
-- retriving suppliers information more efficient
--@block
CREATE INDEX product_supplier_index on product(supplier_id);

--@block
use pet;
CREATE table dog (
  dog_id int,
  dog_name VARCHAR(50),
  owner_id int,
  breed_id int,
  veterinarian_id int,
  PRIMARY KEY (dog_id),
  FOREIGN KEY (owner_id) REFERENCES owner(owner_id),
  FOREIGN key (breed_id) REFERENCES breed(breed_id),
  FOREIGN key (veterinarian_id) REFERENCES veterinarian (veterinarian_id)
);

--@block
SHOW DATABASEs;
--@block
CREATE DATABASE pet;


