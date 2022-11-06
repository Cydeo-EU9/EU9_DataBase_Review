---- return department name and belong state/province in the same table

select DEPARTMENT_NAME, STATE_PROVINCE from DEPARTMENTS
left outer join LOCATIONS
on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID;

-- show employee first name and their start date
select FIRST_NAME, START_DATE from EMPLOYEES
left outer join JOB_HISTORY
on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID;

select FIRST_NAME, START_DATE from JOB_HISTORY
left outer join EMPLOYEES
on JOB_HISTORY.EMPLOYEE_ID = EMPLOYEES.EMPLOYEE_ID;


-- get me department names and end date
select DEPARTMENT_NAME, END_DATE from DEPARTMENTS
                                          left join JOB_HISTORY
                                                    on DEPARTMENTS.DEPARTMENT_ID= JOB_HISTORY.DEPARTMENT_ID;

-- get me job id and job title together
select EMPLOYEES.JOB_ID, JOB_TITLE from EMPLOYEES
                                            left join JOBs
                                                      on EMPLOYEES.JOB_ID = JOBS.JOB_ID;


-- get me department names and end date
-- use above statement, eleminate null values using where
select DEPARTMENT_NAME, END_DATE from DEPARTMENTS
left join JOB_HISTORY
on DEPARTMENTS.DEPARTMENT_ID = JOB_HISTORY.DEPARTMENT_ID
where END_DATE is not null ;

SELECT JOB_HISTORY.job_id,JOB_TITLE from JOB_HISTORY
left join JOBS
                         ON JOB_HISTORY.JOB_ID = JOBS.JOB_ID;