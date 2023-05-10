/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS 
select * 
from employees
where extract(year from hire_date) between 1990 and 1995


/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

create view "bigbucks" as
select distinct e.emp_no, e.first_name,e.last_name, e.birth_date, e.hire_date, e.gender
from employees as e
inner join salaries as s using(emp_no)
where s.salary > 80000
order by emp_no




