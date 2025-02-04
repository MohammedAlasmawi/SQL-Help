Select * 
from employee_demographics as dem
right join employee_salary as sal 
	on dem.employee_id = sal.employee_id