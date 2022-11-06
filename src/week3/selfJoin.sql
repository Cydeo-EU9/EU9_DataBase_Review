SELECT e1.first_name, e1.last_name, e1.manager_id, e2.last_name
FROM employees e1 JOIN employees e2
                       ON e1.manager_id = e2. employee_id;

select * from EMPLOYEES;

-- which job title max salary equals to which job title min salary

