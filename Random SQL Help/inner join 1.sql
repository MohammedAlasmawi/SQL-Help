-- join 

Select dem.first_name, sal.salary
from employee_demographics AS dem
inner join employee_salary AS sal
	on dem.employee_id = sal.employee_id
    
