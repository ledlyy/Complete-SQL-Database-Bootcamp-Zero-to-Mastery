
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

select e.emp_no, e.hire_date, count(t.title)
from employees as e 
inner join titles as t using (emp_no)
where extract (year from e.hire_date) > 1991
group by e.emp_no
having count(t.title) > 2
order by e.emp_no

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

select e.emp_no, count(s.salary)
from employees as e 
inner join salaries as s using(emp_no)
inner join dept_emp as de using(emp_no)
where de.dept_no = 'd005'
group by e.emp_no
having count(s.salary) > 15
order by count desc

-- or

select e.emp_no, count(s.from_date)
from employees as e 
inner join salaries as s using(emp_no)
inner join dept_emp as de using(emp_no)
where de.dept_no = 'd005'
group by e.emp_no
having count(s.from_date) > 15
order by count desc


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

select e.emp_no, count(de.dept_no)
from employees as e 
inner join dept_emp as de using(emp_no)
group by e.emp_no
having count(de.dept_no) > 1
order by count desc

