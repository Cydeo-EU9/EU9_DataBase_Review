SELECT FIRST_NAME FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

SELECT FIRST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY > 5000;

SELECT LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY <= 3000;

SELECT FIRST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY != 10000;

SELECT FIRST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY <> 10000;

SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES;

SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES
                          WHERE JOB_ID='ST_CLERK' OR JOB_ID='IT_PROG';

SELECT * FROM EMPLOYEES;

SELECT FIRST_NAME, SALARY, JOB_ID FROM EMPLOYEES
WHERE JOB_ID='IT_PROG' AND SALARY=4800;

--get me all ST_CLERK NAME  from employee table
SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES
WHERE JOB_ID='ST_CLERK';

--get me postal_code from JP,UK,CA

SELECT * FROM LOCATIONS;

SELECT POSTAL_CODE, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID='JP' OR COUNTRY_ID ='UK' OR COUNTRY_ID = 'CA';

-- get me city not in CH,US
SELECT CITY,COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID!='US' OR COUNTRY_ID!='CH';


-- -- 7. get me job_title whose min_salary is more than 4000 and less than 9000

SELECT JOB_ID, MIN_SALARY FROM JOBS
WHERE MIN_SALARY>4000 AND MIN_SALARY<9000;

SELECT * FROM LOCATIONS;

SELECT CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT','IN','US','CA');

SELECT CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID='IT' OR COUNTRY_ID = 'IN';

SELECT  FIRST_NAME FROM  EMPLOYEES;

select JOB_ID from JOBS
where JOB_ID like 'SA%';

SELECT FIRST_NAME FROM  EMPLOYEES
WHERE FIRST_NAME LIKE 'Da%';

select JOB_TITLE from JOBS
where JOB_TITLE like 'S%';

SELECT  JOB_TITLE from JOBS
where JOB_TITLE like '%Manager';

select * from EMPLOYEES;

select HIRE_DATE, FIRST_NAME from EMPLOYEES
where HIRE_DATE like '%2006';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A____';

select LAST_NAME from EMPLOYEES
where LAST_NAME like '______a';

select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A_B_';

-- get me all employee first_name who works in some CLERK position
select FIRST_NAME, JOB_ID from EMPLOYEES
where JOB_ID like '%CLERK%';

-- get me email whose email is 6 letter and 4th letter of email is E
SELECT EMAIL FROM EMPLOYEES
WHERE EMAIL LIKE '___A__';

-- GET ME ALL FRIST NAME WHOSE LAST NAME IS 5 CHAR LONG
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE LAST_NAME LIKE '_____';

-- GET ME THOSE FIRST NAME, SALARY WHO STARTS AT 2005
SELECT FIRST_NAME, SALARY, HIRE_DATE FROM  EMPLOYEES
WHERE HIRE_DATE LIKE '%2005%';





