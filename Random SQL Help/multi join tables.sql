Select dem.first_name, dem.age, sal.salary, pd.department_id ,pd.department_name
from employee_demographics as dem
inner join employee_salary as sal 
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
