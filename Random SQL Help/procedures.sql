-- procedures

DELIMITER $$
create procedure large_salary()
begin
	select *
    from employee_salary
    where salary > 10000;
    select *
    from employee_salary
    where salary > 50000; 
end $$
DELIMITER ; 

DELIMITER $$
create procedure large_salary1()
begin
	select dem.first_name, dem.last_name,dem.age, sal.salary
    from employee_salary as sal
    join employee_demographics as dem 
    on sal.employee_id = dem.employee_id
    where sal.salary > 50000; 
end $$
DELIMITER ; 

DELIMITER $$
create procedure large_salary2(p_employee_id int)
begin
	Select salary 
    from employee_salary
    where employee_id = p_employee_id;
end $$
DELIMITER ;

Call large_salary2(1);

