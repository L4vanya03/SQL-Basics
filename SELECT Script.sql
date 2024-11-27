SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name,
age,
birth_date,
(age+10)*10
#PEMDAS
FROM parks_and_recreation.employee_demographics;

SELECT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>'1000';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary>'1000'
OR NOT gender='male';

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;