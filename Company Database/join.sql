
-- display the employee name, id and branch name
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee JOIN branch  
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee left JOIN branch  
ON employee.emp_id = branch.mgr_id;

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee right join  branch  
ON employee.emp_id = branch.mgr_id;