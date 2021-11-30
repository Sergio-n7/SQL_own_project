/* 2021-11-17 13:55:15 [84 ms] */
ALTER TABLE
  employee
ADD
  FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE
SET
  NULL
  /* 2021-11-17 13:58:16 [61 ms] */
ALTER TABLE
  employee
ADD
  FOREIGN KEY(super_id) REFERENCES employee(emp_id) ON DELETE
SET
  NULL
  /* 2021-11-17 14:21:00 [4 ms] */
INSERT INTO
  branch_supplier
VALUES
  (2, 'Hammer Mill', 'Paper')
  /* 2021-11-17 14:21:38 [3 ms] */
INSERT INTO
  branch_supplier
VALUES(2, 'Uni-ball', 'Writing Utensils')
  /* 2021-11-17 14:21:40 [2 ms] */
INSERT INTO
  branch_supplier
VALUES(3, 'Patriot Paper', 'Paper')
  /* 2021-11-17 14:21:42 [3 ms] */
INSERT INTO
  branch_supplier
VALUES(2, 'J.T. Forms & Labels', 'Custom Forms')
  /* 2021-11-17 14:21:44 [4 ms] */
INSERT INTO
  branch_supplier
VALUES(3, 'Uni-ball', 'Writing Utensils')
  /* 2021-11-17 14:21:45 [2 ms] */
INSERT INTO
  branch_supplier
VALUES(3, 'Hammer Mill', 'Paper')
  /* 2021-11-17 14:21:46 [2 ms] */
INSERT INTO
  branch_supplier
VALUES(3, 'Stamford Labels', 'Custom Forms')
  /* 2021-11-17 14:27:13 [4 ms] */
INSERT INTO
  client
VALUES(400, 'Dunmore Highschool', 2)
  /* 2021-11-17 14:27:17 [2 ms] */
INSERT INTO
  client
VALUES(401, 'Lackawana County', 2)
  /* 2021-11-17 14:27:18 [2 ms] */
INSERT INTO
  client
VALUES(402, 'FedEx', 3)
  /* 2021-11-17 14:27:20 [3 ms] */
INSERT INTO
  client
VALUES(403, 'John Daly Law, LLC', 3)
  /* 2021-11-17 14:27:22 [2 ms] */
INSERT INTO
  client
VALUES(404, 'Scranton Whitepages', 2)
  /* 2021-11-17 14:27:23 [2 ms] */
INSERT INTO
  client
VALUES(405, 'Times Newspaper', 3)
  /* 2021-11-17 14:27:25 [2 ms] */
INSERT INTO
  client
VALUES
  (406, 'FedEx', 2)
  /* 2021-11-17 14:32:22 [6 ms] */
INSERT INTO
  works_with
VALUES
  (105, 400, 55000)
  /* 2021-11-17 14:32:25 [3 ms] */
INSERT INTO
  works_with
VALUES
  (102, 401, 267000)
  /* 2021-11-17 14:32:27 [2 ms] */
INSERT INTO
  works_with
VALUES
  (108, 401, 22500)
  /* 2021-11-17 14:32:28 [2 ms] */
INSERT INTO
  works_with
VALUES
  (107, 403, 5000)
  /* 2021-11-17 14:32:29 [2 ms] */
INSERT INTO
  works_with
VALUES
  (108, 403, 12000)
  /* 2021-11-17 14:32:30 [2 ms] */
INSERT INTO
  works_with
VALUES
  (105, 404, 33000)
  /* 2021-11-17 14:32:31 [3 ms] */
INSERT INTO
  works_with
VALUES
  (107, 405, 26000)
  /* 2021-11-17 14:32:32 [2 ms] */
INSERT INTO
  works_with
VALUES
  (102, 406, 15000)
  /* 2021-11-17 14:32:33 [2 ms] */
INSERT INTO
  works_with
VALUES
  (105, 406, 130000)
  /* 2021-11-17 14:49:06 [2 ms] */
SELECT
  *
FROM
  employee
  /* 2021-11-17 14:52:52 [2 ms] */
SELECT
  *
FROM
  employee
ORDER BY
  salary
  /* 2021-11-17 14:55:22 [1 ms] */
SELECT
  *
FROM
  employee
ORDER BY
  salary DESC
  /* 2021-11-17 14:59:19 [3 ms] */
SELECT
  *
FROM
  employee
ORDER BY
  sex,
  first_name,
  last_name
  /* 2021-11-17 15:00:27 [1 ms] */
SELECT
  *
FROM
  employee
LIMIT
  5
  /* 2021-11-17 15:02:06 [2 ms] */
SELECT
  first_name,
  last_name
FROM
  employee
  /* 2021-11-17 15:04:23 [2 ms] */
SELECT
  first_name AS Forname,
  last_name AS Surname
FROM
  employee
  /* 2021-11-17 15:06:34 [4 ms] */
SELECT
  DISTINCT sex
FROM
  employee
  /* 2021-11-17 15:11:19 [1 ms] */
SELECT
  COUNT(emp_id)
FROM
  employee
  /* 2021-11-17 15:19:18 [32 ms] */
ALTER TABLE
  employee CHANGE birth_day birth_date date
  /* 2021-11-17 15:19:49 [6 ms] */
SELECT
  COUNT(emp_id)
FROM
  employee
WHERE
  sex = 'F'
  AND birth_date > '1971-01-01'
  /* 2021-11-17 15:22:34 [3 ms] */
SELECT
  AVG(salary)
FROM
  employee
  /* 2021-11-17 15:24:14 [1 ms] */
SELECT
  AVG(salary)
FROM
  employee
WHERE
  sex = 'M'
  /* 2021-11-17 15:26:07 [3 ms] */
SELECT
  SUM(salary)
FROM
  employee
  /* 2021-11-17 15:29:09 [3 ms] */
SELECT
  COUNT(sex),
  sex
FROM
  employee
GROUP BY
  sex
  /* 2021-11-17 15:33:11 [3 ms] */
SELECT
  COUNT(total_sales)
FROM
  works_with
GROUP BY
  emp_id
  /* 2021-11-17 15:33:34 [1 ms] */
SELECT
  COUNT(total_sales),
  emp_id
FROM
  works_with
GROUP BY
  emp_id
  /* 2021-11-17 15:34:08 [2 ms] */
SELECT
  sum(total_sales),
  emp_id
FROM
  works_with
GROUP BY
  emp_id
  /* 2021-11-17 15:34:30 [1 ms] */
SELECT
  SUM(total_sales),
  emp_id
FROM
  works_with
GROUP BY
  emp_id
  /* 2021-11-17 15:36:08 [2 ms] */
SELECT
  SUM(total_sales),
  client_id
FROM
  works_with
GROUP BY
  client_id
  /* 2021-11-17 15:37:03 [2 ms] */
SELECT
  SUM(total_sales),
  client_id,
  emp_id
FROM
  works_with
GROUP BY
  client_id,
  emp_id
  /* 2021-11-17 15:38:07 [3 ms] */
SELECT
  SUM(total_sales),
  client_id
  AND COUNT(total_sales),
  client_id
FROM
  works_with
GROUP BY
  client_id
  /* 2021-11-17 15:38:23 [1 ms] */
SELECT
  SUM(total_sales),
  client_id
  AND COUNT(total_sales),
  client_id
FROM
  works_with
GROUP BY
  client_id,
  client_id
  /* 2021-11-17 15:39:09 [1 ms] */
SELECT
  SUM(total_sales),
  client_id
FROM
  works_with
GROUP BY
  client_id