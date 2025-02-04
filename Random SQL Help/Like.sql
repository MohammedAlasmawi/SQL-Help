-- start with 1989% 
-- end with %1989 
-- contains 3 character ___ 
Select *
from employee_demographics 
where birth_date LIKE '1989%'