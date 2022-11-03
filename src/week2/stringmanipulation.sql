select FIRST_NAME, LAST_NAME from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME  from EMPLOYEES;

select FIRST_NAME || ' ' || LAST_NAME as "Full Name"  from EMPLOYEES;

select EMAIL from EMPLOYEES;

select EMAIL||'@gmail' as "Email lin" from EMPLOYEES;


select lower(EMAIL||'@gmail') as "Email lin" from EMPLOYEES;

select * from EMPLOYEES;

select Upper(LAST_NAME) from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;

select substr(FIRST_NAME,0,4) from EMPLOYEES;

-- get me every job_title length
select JOB_TITLE , length(JOB_TITLE) from JOBS;

-- get me all city name uppercase and address lowercase
select upper(CITY), lower(STREET_ADDRESS) from LOCATIONS;

-- employee id + first 2 leters of firstname + first 3 letters of job_id + department id
-- new id name is Personal ID

select EMPLOYEE_ID||substr(FIRST_NAME,0,2)||substr(JOB_ID,0,2)||DEPARTMENT_ID
    as "Personal ID" from EMPLOYEES;//

