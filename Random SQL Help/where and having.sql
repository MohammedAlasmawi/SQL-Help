Select occupation, avg(salary) 
from employee_salary
where occupation LIKE '%manager%'
group by occupation
having avg(salary) > 50000