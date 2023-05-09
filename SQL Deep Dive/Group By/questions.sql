/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT e.hire_date, count(e.emp_no)
FROM employees as e
group by e.hire_date
order by e.hire_date;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) as "title_sum"
FROM employees as e
join titles as t using(emp_no)
where extract ('year' from e.hire_date) > 1991
group by e.emp_no
order by "title_sum" desc;


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
join dept_emp as de using(emp_no)
where dept_no = 'd005'
GROUP BY e.emp_no, de.from_date, de.to_date
order by emp_no;
