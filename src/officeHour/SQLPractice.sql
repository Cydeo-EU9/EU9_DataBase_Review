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




