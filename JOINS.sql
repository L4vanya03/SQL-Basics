-- Join

SELECT*
FROM employee_demographics
JOIN employee_salary
ON employee_demographics.employee_id=employee_salary.employee_id;

SELECT*
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;

-- OUTER JOIN

SELECT*
FROM employee_demographics dem
LEFT JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;

SELECT*
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
ON dem.employee_id=sal.employee_id;

-- self join

SELECT*
FROM employee_salary sal1
JOIN employee_salary sal2
ON sal1.employee_id=sal2.employee_id;

SELECT sal1.employee_id AS employee_id_santa,
sal1.first_name AS first_name_santa,
sal1.last_name AS last_name_santa,
sal2.employee_id,
sal2.first_name,
sal2.last_name
FROM employee_salary sal1
JOIN employee_salary sal2
ON sal1.employee_id+1=sal2.employee_id;

-- Joining multiple tables

SELECT*
FROM parks_departments;

SELECT*
FROM employee_demographics dem
INNER JOIN employee_salary sal
ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments pr
ON sal.dept_id=pr.department_id;

