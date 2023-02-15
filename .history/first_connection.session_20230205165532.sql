show DATABASEs;

--@block
USE vscodedb;

--@block
SHOW TABLES;
--@block
SELECT * from Users;

--@block
DESCRIBE Users;

--@block 
create DATABASE sql_intro;
CREATE TABLE emp_details (Name VARCHAR (25), Age int, sex CHAR(1), doj date,
city varchar(15), salary float);

DESCRIBE emp_details;

--@block
INSERT INTO emp_details
VALUES
("Jimmy", 35, "M", "2005-05-30","Chicago", 70000),
("sam", 36, "M", "2006-05-30","New york", 80000),
("sarah", 34, "F", "2007-05-30","nice city", 100000);

SELECT * from emp_details;

-- using distinct key word
--@block
SELECT DISTINCT city from emp_details;

--@block
SELECT count(name) as count_name from emp_details;

--@block
SELECT avg(salary) from emp_details;

--@block 
select name, age, city from emp_details;

--@block 
SELECT name,sex,city from emp_details WHERE age > 30;

-- Using or operator
--@block COMMENT
select * from emp_details WHERE 
city = 'chicago' OR 'nice city';

--@block using in 
SELECT * from emp_details WHERE city
in ('Chicago', 'New york');

--@block using betwen operator
SELECT * from emp_details WHERE
doj BETWEEN "2000-01-01" and "2005-01-01";

--@block
SELECT * from emp_details where Age > 30
and sex = 'M' ORDER BY salary ;

--@block
SELECT sex, sum(salary) as total_salary from emp_details
GROUP BY sex; 

--@block select in built functions
-- SELECT curdate();
-- select repeat("@", 10);
-- SELECT upper("samuel");
-- SELECT lower("samuel");
-- SELECT day(CURRENT_DATE());
SELECT now()


--  String functions

--@block 
SELECT upper('Samuel') as upper_case;
--@block
SELECT lower("SAMUEL") as lower_csae;
--@block
SELECT character_length("Samuel") as total_len;
--@block
select concat("Kenya " "is " "in " "Africa") as merged;
--@block
select reverse("Kenya");

--@block
-- CREATE TABLE `myTable` (
--   `id` mediumint(8) unsigned NOT NULL auto_increment,
--   `name` varchar(255) default NULL,
--   `email` varchar(255) default NULL,
--   `country` varchar(100) default NULL,
--   PRIMARY KEY (`id`)
-- ) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`name`,`email`,`country`)
VALUES
  ("Nadine Evans","arcu.vivamus.sit@google.org","Indonesia"),
  ("Timon Wyatt","quisque.varius@yahoo.org","Brazil"),
  ("Shoshana Whitehead","dolor@yahoo.com","Russian Federation"),
  ("Echo Kline","iaculis.lacus@protonmail.ca","Costa Rica"),
  ("Cassady Lynch","libero.proin.mi@google.ca","United States");


--@block
show DATABASES;

--@block
USE myTable;
