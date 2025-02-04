-- select inside select 

select first_name, salary, (select avg(salary) from employee_salary)
from employee_salary;

-- select from select table i did create 
select gender, avg_age
from (select gender, avg(age) as avg_age, min(age) as min_age, max(age) as max_age, count(age) as num
from employee_demographics
group by gender) as agg_table;

