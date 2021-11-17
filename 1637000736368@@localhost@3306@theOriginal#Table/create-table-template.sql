CREATE TABLE [name](  
    id int NOT NULL primary key AUTO_INCREMENT COMMENT 'Primary Key',
    create_time DATETIME COMMENT 'Create Time',
    update_time DATETIME COMMENT 'Update Time',
    [column] varchar(255) COMMENT ''
) default charset utf8 COMMENT '';

SELECT * FROM employee;
SELECT * FROM employee ORDER BY salary;
SELECT * FROM employee ORDER BY salary DESC;
SELECT * FROM employee ORDER BY sex, first_name, last_name;
SELECT * FROM employee LIMIT 5;
SELECT first_name, last_name FROM employee;
SELECT first_name AS Forname, last_name AS Surname FROM employee;
 SELECT DISTINCT sex FROM employee;

