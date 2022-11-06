-- show region name and country name together

select REGION_NAME, COUNTRY_NAME from REGIONS
full outer join COUNTRIES
on REGIONS.REGION_ID = COUNTRIES.REGION_ID;

-- get me first name , start date, end date in same table of all employees
select FIRST_NAME, START_DATE, END_DATE from EMPLOYEES
full outer join JOB_HISTORY
on EMPLOYEES.EMPLOYEE_ID = JOB_HISTORY.EMPLOYEE_ID
where END_DATE is not null;
