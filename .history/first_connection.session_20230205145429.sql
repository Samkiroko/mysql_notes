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
("Jimmy", 35, "M", "2005-05-30","Chicago", 70000)
("sam", 36, "M", "2006-05-30","New york", 80000)
("sarah", 34, "F", "2007-05-30","nice city", 100000)