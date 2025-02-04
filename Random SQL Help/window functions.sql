-- window function using over 

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender) as avg_salary
from employee_demographics as dem 
join employee_salary as sal 
	on dem.employee_id = sal.employee_id;
    
-- using sum salary how much all salaries 
select dem.first_name, dem.last_name, gender, sum(salary) over(partition by gender order by dem.employee_id) as sum_salary, salary
from employee_demographics as dem 
join employee_salary as sal 
	on dem.employee_id = sal.employee_id;
    
-- row number and rank 
select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() over(partition by gender order by salary desc) as row_num,
RANK() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_num
from employee_demographics as dem 
join employee_salary as sal 
	on dem.employee_id = sal.employee_id;

