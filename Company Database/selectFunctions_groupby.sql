
-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT  sex, COUNT(sex)
FROM employee
GROUP BY sex

-- Find the total sales of each salesman
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;

-- Find the total amount of money spent by each client
SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;
