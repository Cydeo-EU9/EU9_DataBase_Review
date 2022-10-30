select min(SALARY) from EMPLOYEES;

select max(SALARY) from EMPLOYEES;

select avg(SALARY) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;

select SALARY from  EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;

-- get me maximum salary of IT_PROG
select max(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';

-- minimum salary of SA_REP
select min(salary) from EMPLOYEES
where JOB_ID='SA_REP';

-- how much money is company paying for all ST_MAN
SELECT SUM(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'ST_MAN';

-- CALCULATE AVG INCOME OF SA_REP
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'SA_REP';
