CREATE TABLE [name](  
    id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    update_time DATETIME COMMENT 'Update Time',
    [column] varchar(255) COMMENT ''
) default charset utf8 COMMENT '';
--------------------
-- common queries
--------------------

SELECT * FROM employee;
SELECT * FROM employee ORDER BY salary;
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY sex, first_name, last_name;
SELECT * FROM employee LIMIT 5;
SELECT first_name, last_name FROM employee;
SELECT first_name AS Forname, last_name AS Surname FROM employee;
 SELECT DISTINCT sex FROM employee;

 --------------
 --FUNTIONS
 --------------

 -- count the number of employees 
 SELECT COUNT(emp_id) FROM employee;
-- Find the number of female employees born after 1970
SELECT COUNT(emp_id) FROM employee WHERE sex = 'F' AND birth_date > '1971-01-01';
-- Find the average of al employee's salary
SELECT AVG(salary) FROM employee;
-- Find the average of all men employee's salary
SELECT AVG(salary) FROM employee WHERE sex = 'M';
-- Find the sum of all employee's salaries
SELECT SUM(salary) FROM employee;
-- Find out how many males and females there are 
SELECT COUNT(sex), sex FROM employee GROUP BY sex;
-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id FROM works_with GROUP BY emp_id;
-- Find how much money spend each client
SELECT SUM(total_sales), client_id FROM works_with GROUP BY client_id;


 

