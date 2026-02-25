CREATE DATABASE thegift;
USE thegift;
SHOW TABLES; 
SELECT * FROM employees;
SELECT COUNT(employee_number) AS total_records FROM employees; -- there are 40 records
SELECT  COUNT(DISTINCT employee_number) AS total_records FROM employees; -- there are 15 employees

-- Level 1: a. Employees earning 120,000 or more 
SELECT * FROM employees WHERE salary >= 120000;
SELECT DISTINCT * FROM employees WHERE salary >= 120000; -- There are 3 high earners
SELECT COUNT(DISTINCT employee_number) FROM employees WHERE salary >= 120000;

 -- b. Full details of employee_number 1005
 SELECT * FROM employees WHERE employee_number = 1005;
 SELECT DISTINCT * FROM employees WHERE employee_number = 1005;

-- c. IT Department
SELECT * FROM employees WHERE department = 'IT';
SELECT DISTINCT * FROM employees WHERE department = 'IT';

-- Level 2: a. Female employees in the finance department
SELECT * FROM employees WHERE gender = 'Female' AND department = 'Finance';
SELECT DISTINCT * FROM employees WHERE gender = 'Female' AND department = 'Finance'; 

-- b. Employees whose salaries fall be tween 70,000 and 90,000
SELECT * FROM employees WHERE salary BETWEEN 70000 AND 90000;
SELECT DISTINCT * FROM employees WHERE salary BETWEEN 70000 AND 90000;

-- c. Employees who are not currently Active
SELECT * FROM employees WHERE employment_status <> 'Active';
SELECT DISTINCT * FROM employees WHERE employment_status <> 'Active';
SELECT * FROM employees WHERE employment_status IN ('Resigned','Online');

-- Level 3: a. Employees with the word “Manager” anywhere in their job title
SELECT * FROM employees WHERE job_title LIKE '%Manager';
SELECT DISTINCT * FROM employees WHERE job_title LIKE '%Manager';

-- b. Employees in Sales, Mark eting, or Operations
SELECT * FROM employees WHERE department IN ('Sales', 'Marketing', 'Operations');
SELECT DISTINCT * FROM employees WHERE department IN ('Sales', 'Marketing', 'Operations');

-- c. Employees whose first_name starts with “A”
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT DISTINCT * FROM employees WHERE first_name LIKE 'A%';

-- 4. Find all Male employees who: work in Sales OR IT, were hired after 2015-01-01, earn more than 80,000
SELECT DISTINCT * FROM employees WHERE gender = 'Male' AND hire_date > 2015-01-01 AND salary > 80000 AND department IN ('Sales','IT');