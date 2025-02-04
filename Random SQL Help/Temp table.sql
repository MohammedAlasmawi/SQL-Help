-- temp tables 

create temporary table salary_above_60k
select * 
from employee_salary
where salary > 60000;

select *
from salary_above_60k

