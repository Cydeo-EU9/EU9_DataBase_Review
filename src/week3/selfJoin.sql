SELECT e1.first_name, e1.last_name, e1.manager_id, e2.last_name
FROM employees e1 JOIN employees e2
                       ON e1.manager_id = e2. employee_id;

select * from EMPLOYEES;

-- which job title max salary equals to which job title min salary
select e1.JOB_TITLE, e1.MAX_SALARY, e2.MIN_SALARY, e2.JOB_TITLE from JOBS e1
                                                                         join JOBS e2
                                                                              on e1.MAX_SALARY = e2.MIN_SALARY;

select e1.JOB_TITLE, e2.JOB_TITLE
from JOBS e1 join JOBS e2
                  on e1.MAX_SALARY = e2.MIN_SALARY;

SELECT J1.JOB_TITLE, J1.MAX_SALARY, J2.JOB_TITLE, J2.MIN_SALARY
FROM JOBS J1 JOIN JOBS J2
                  ON J1.MAX_SALARY = J2.MIN_SALARY;

select j1.JOB_TITLE, j1.MAX_SALARY, j2.JOB_TITLE, j2.MIN_SALARY
from JOBS j1 join JOBS j2
on j1.MAX_SALARY = j2.MIN_SALARY;