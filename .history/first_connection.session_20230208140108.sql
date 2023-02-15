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
SELECT curdate();
-- select repeat("@", 10);
-- SELECT upper("samuel");
-- SELECT lower("samuel");
-- SELECT day(CURRENT_DATE());
-- SELECT now()


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
DESCRIBE myTable;
--@block
SELECT reverse(name) from myTable;
--@block
select replace("Orange is a vegetable", "vegetable", "fruit")
--@block
SELECT length("    Kenya      ");
--@block()
SELECT length(trim("    Kenya      "));
--@block
SELECT position("fruit" in "Orange is fruit");


--@block
describe MOCK_DATA;
--@block 
SELECT Dept, avg(age) as average_age from MOCK_DATA
GROUP BY Dept;

--@block
SELECT * from MOCK_DATA;

--@block
SELECT CURRENT_DATE;

--@block COMMENT
SELECT Dept, avg(cast(replace(Salary, '$','') as INT)) as average_age from employees
GROUP BY Dept;

--@block
SELECT AVG(cast(replace(Salary, '$', '') as int))
FROM employees;

--@block
SELECT * from employees;

--@block
SELECT AVG(cast(replace(Salary, '$', '') as int)) as avg_money
FROM employees GROUP BY Dept;

--@block
select DISTINCT city form FROM employees;
--@block
SELECT avg(age) FROM employees;
--@block
select Dept, avg(age) as average_age FROM employees
GROUP BY Dept;

--@block
SELECT AVG(CONVERT(INT, SUBSTRING(Salary, 2, LEN(Salary)))) as avg_money
FROM employees GROUP BY Dept;

--@block
select count(id), city from employees
GROUP BY City
ORDER BY count(id) DESC;

--@block
SELECT YEAR(Doj) as year_of_joining , count(id)
from employees
GROUP BY YEAR(Doj)
ORDER BY year(Doj) ASC;



--@block
CREATE TABLE sales (product_id int, sell_price FLOAT, quantity int, City VARCHAR(100));
--@block
insert into sales VALUES
(121, 320.0, 3, 'California'),
(122, 330.0, 6, 'Taxas'),
(122, 290.0, 4, 'Alaska');

--@block
SELECT * from sales;

--@block
SELECT product_id, sum(sell_price * quantity) as revenue
from sales GROUP BY product_id;

--@block
create table pet (name varchar(20), owner varchar(20), species varchar(20), sex char(1), birth date, death date);