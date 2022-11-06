-- show me which country is in which region
select * from COUNTRIES;
select * from REGIONS;

select COUNTRY_NAME, REGION_NAME from COUNTRIES
right outer join REGIONS
on COUNTRIES.REGION_ID = REGIONS.REGION_ID;

-- which department name has commission rate and how much it is
select DEPARTMENT_NAME, COMMISSION_PCT from EMPLOYEES
right outer join  DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
where COMMISSION_PCT is not null ;

--get me first name who left the company
select * from JOB_HISTORY;
select FIRST_NAME from EMPLOYEES;

SELECT FIRST_NAME, END_DATE
FROM EMPLOYEES RIGHT OUTER JOIN JOB_HISTORY
                                ON EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

SELECT FIRST_NAME, END_DATE
FROM JOB_HISTORY RIGHT OUTER JOIN EMPLOYEES
                                ON EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

-- get me first name and job title for those whose salary is equal to max salary of that job  title
select FIRST_NAME, JOB_TITLE from EMPLOYEES
                                      right join JOBS
                                                 on EMPLOYEES.JOB_ID = JOBS.JOB_ID
where SALARY = MAX_SALARY;

SELECT FIRST_NAME, SALARY, JOB_TITLE, MAX_SALARY FROM EMPLOYEES
                                                          RIGHT OUTER JOIN JOBS
                                                                           ON EMPLOYEES.SALARY = JOBS.MAX_SALARY;
