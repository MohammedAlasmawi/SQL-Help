-- CTE SELECT FROM MY TABLE 

WITH CTE_TEST AS
(
select dem.gender, avg(sal.salary) AVG_SAL
from employee_demographics as dem
join employee_salary as sal 
	on dem.employee_id = sal.employee_id
group by gender
)
SELECT avg(AVG_SAL)
FROM CTE_TEST
;

-- SUBQ EXAMPLE 
SELECT avg(AVG_SAL) FROM
(
select dem.gender, avg(sal.salary) AVG_SAL
from employee_demographics as dem
join employee_salary as sal 
	on dem.employee_id = sal.employee_id
group by gender
) EXAMPLE 
;

-- ANOTHER CTE example 

WITH CTE_TABLE1 AS
(
select employee_id,first_name, gender, birth_date
from employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_TABLE2 AS
(
select employee_id, salary
from employee_salary
WHERE salary > 50000
)

SELECT * 
FROM CTE_TABLE1
JOIN CTE_TABLE2 
	ON CTE_TABLE1.employee_id = CTE_TABLE2.employee_id
;