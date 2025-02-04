Select first_name, last_name, 'Old man' as label 
from employee_demographics
where age > 40 and gender = 'Male'
union
Select first_name, last_name, 'Old Lady' as label 
from employee_demographics
where age > 40 and gender = 'Female'
union 
Select first_name, last_name, 'Highliy Paid' as label 
from employee_salary
where salary > 70000
order by first_name