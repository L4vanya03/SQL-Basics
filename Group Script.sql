SELECT gender,AVG(age),MAX(age),MIN(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender  
HAVING avg_age>40;