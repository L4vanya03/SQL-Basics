-- unions

SELECT employee_id,gender
FROM employee_demographics
UNION 
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT 
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL 
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name, 'Old' AS Label
FROM employee_demographics
WHERE age>50;

SELECT first_name,last_name, 'Old' AS Label
FROM employee_demographics
WHERE age>50
UNION 
SELECT first_name,last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary>70000;

SELECT first_name,last_name, 'Old MAN' AS Label
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION 
SELECT first_name,last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age>30 AND gender='Female'
UNION 
SELECT first_name,last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary>70000
ORDER BY first_name,last_name; 