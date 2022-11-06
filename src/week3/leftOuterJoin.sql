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

