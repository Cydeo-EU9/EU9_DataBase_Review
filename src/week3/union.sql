select * from LAPTOPS
union all
select * from PHONE;

select * from PHONE
union
select * from LAPTOPS;

--get me the colors only laptops have
select COLOR from PHONE
minus
select COLOR from LAPTOPS;

--get me common colors for phone and laptops
select COLOR from LAPTOPS
intersect
select COLOR from PHONE;