-- select
select FIRST_NAME from EMPLOYEES;
select FIRST_NAME, LAST_NAME, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID from EMPLOYEES;
select * from EMPLOYEES;

-- distinct
select distinct FIRST_NAME from EMPLOYEES;

-- where
select SALARY from EMPLOYEES
where SALARY < 5000;

-- >, <, =, != or, and
select FIRST_NAME from EMPLOYEES
where FIRST_NAME = 'David';

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY = 10000;

select REGION_NAME from REGIONS
where REGION_ID != 3;

-- use or/ and keyword for more than one condition
select MANAGER_ID, FIRST_NAME from EMPLOYEES
where MANAGER_ID=100 or MANAGER_ID=110;

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY=4800 and MANAGER_ID = 103;

-- count
select count(FIRST_NAME) from EMPLOYEES;
select count(COMMISSION_PCT) from EMPLOYEES; -- count method is not counting null values
select COMMISSION_PCT from EMPLOYEES;
select count(distinct COMMISSION_PCT) from EMPLOYEES;

-- order
select SALARY from EMPLOYEES
order by SALARY; -- default order is ascending

select SALARY from EMPLOYEES
order by SALARY asc ;

select SALARY from EMPLOYEES
order by SALARY desc ;

select FIRST_NAME from EMPLOYEES
order by FIRST_NAME ; -- alphabetic default order is asc

select FIRST_NAME, LAST_NAME from EMPLOYEES
order by FIRST_NAME asc , LAST_NAME asc ;

select FIRST_NAME, SALARY from EMPLOYEES
order by FIRST_NAME asc , SALARY desc ;

-- between
select SALARY from EMPLOYEES
where SALARY > 5000 and SALARY < 9000; --31

select SALARY from  EMPLOYEES
where  SALARY between 5000 and 9000; -- 35 between is including the values provided.

--in
select  FIRST_NAME, SALARY from EMPLOYEES
where SALARY=5000 or SALARY = 6000 or SALARY = 7000 or SALARY = 8000;

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY in(5000, 6000, 7000, 8000);

select city, COUNTRY_ID from LOCATIONS
where COUNTRY_ID in ('UK','US');

select city, COUNTRY_ID from LOCATIONS
where COUNTRY_ID not in ('UK','US');

--  like %   _
select  FIRST_NAME from  EMPLOYEES
where FIRST_NAME like 'J%';

select LAST_NAME from EMPLOYEES
where LAST_NAME like '%e'; -- Lee   Stone

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'D%d';

-- each underscore represents a letter
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_____';

select LAST_NAME from  EMPLOYEES
where LAST_NAME like 'T_____';

select FIRST_NAME from EMPLOYEES
where  LAST_NAME like '____';


-- aggregate functions
-- max   min
select max(SALARY) from EMPLOYEES;
select min(SALARY) from EMPLOYEES;

-- average   --> avg
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY),0) from EMPLOYEES; -- default round number is 0
select round(avg(SALARY),2) from EMPLOYEES;

-- sum
select sum(SALARY) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES
where DEPARTMENT_ID=80;

-- group by
select JOB_ID from EMPLOYEES;
select distinct JOB_ID from EMPLOYEES;

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
order by avg(SALARY) desc ;

select DEPARTMENT_ID , sum(SALARY) from  EMPLOYEES
group by DEPARTMENT_ID;

-- each department employees number
select DEPARTMENT_ID, count(FIRST_NAME) from EMPLOYEES
group by DEPARTMENT_ID;

-- having by
select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(salary) < 10000;

-- where is used before group by, and affects individual results
-- having is used after group by, affects group results.

-- row number
select FIRST_NAME, SALARY from EMPLOYEES
where ROWNUM < 5; -- index starts with 1

-- sub query
select round(avg(salary)) from EMPLOYEES;

select SALARY from EMPLOYEES
where SALARY > (select round(avg(salary)) from EMPLOYEES);

-- how to find second max salary
select SALARY from EMPLOYEES
order by SALARY desc ;

select max(SALARY) from EMPLOYEES; -- 24000

select max(SALARY) from EMPLOYEES
where SALARY != (select max(SALARY) from EMPLOYEES);

select SALARY from EMPLOYEES
where SALARY < 24000
order by SALARY desc;

-- string functions
-- concatenation
select FIRST_NAME, EMAIL from EMPLOYEES;
select EMAIL||'@gmail' as fullEmail from EMPLOYEES; --  email + @gmail = fullEmail

select lower(email) from EMPLOYEES;

select lower(EMAIL)||'@gmail.com' as newEmail from EMPLOYEES;

select upper(FIRST_NAME) from EMPLOYEES;

select LAST_NAME, length(LAST_NAME) from EMPLOYEES;

-- substring
select FIRST_NAME, substr(FIRST_NAME,1,3) from EMPLOYEES;
select JOB_TITLE, substr(JOB_TITLE, 2,2) from JOBS;

-- init cap
select EMAIL from EMPLOYEES;
select EMAIL, initcap(EMAIL) from EMPLOYEES;

-- view
-- view function generate a virtual table, to see the result later
create view emailinit10 as select EMAIL, initcap(EMAIL) as initEmail10 from EMPLOYEES;

create view fullEmailNew as select lower(EMAIL)||'@gmail.com' as fullEmailNew from EMPLOYEES;


-- join

-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME from EMPLOYEES
left join  DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME from EMPLOYEES
right join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select FIRST_NAME, END_DATE from EMPLOYEES
right join JOB_HISTORY
on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

select FIRST_NAME, END_DATE from EMPLOYEES
left join JOB_HISTORY
on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;











