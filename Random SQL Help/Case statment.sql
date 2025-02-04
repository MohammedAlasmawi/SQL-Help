-- Case statments
select concat(first_name,' ',last_name), salary,
case
	when salary <= 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
End As new_salary,

case
	when dept_id = 6 then salary * 0.1
End As bones

from employee_salary
