USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE
    (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
                          AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1979 AND 1990
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT datediff(NOW(),hire_date) AS days_employed
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1979 AND 1990
  AND month(birth_date) = 12
  AND day(birth_date) = 25
  ORDER BY birth_date, hire_date DESC;