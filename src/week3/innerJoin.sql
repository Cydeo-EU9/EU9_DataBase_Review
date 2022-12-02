select * from JOBS;

select * from JOB_HISTORY;

select JOB_TITLE, JOB_HISTORY.JOB_ID from JOBS
inner join JOB_HISTORY
on JOBS.JOB_ID = JOB_HISTORY.JOB_ID;

select * from LOCATIONS;
select * from COUNTRIES;

select STREET_ADDRESS, POSTAL_CODE,CITY,COUNTRY_NAME from LOCATIONS
inner join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;


-- get me first name and department name in same table
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES
inner join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--get me job id and manager id in one table
select J.JOB_ID, E.MANAGER_ID
from JOBS J join EMPLOYEES E
                 on J.JOB_ID = E.JOB_ID;

SELECT JOB_ID, DEPARTMENTS.MANAGER_ID
FROM EMPLOYEES
         INNER JOIN DEPARTMENTS
                    ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;


select * from LOCATIONS;

select COUNTRY_NAME, REGION_NAME from COUNTRIES
                                          full outer join REGIONS
                                                          on COUNTRIES.REGION_ID=REGIONS.REGION_ID;