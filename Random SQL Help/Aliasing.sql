-- Aliasing 

Select gender, avg(age) As avg_age 
from employee_demographics
group by gender 
having avg_age > 40
