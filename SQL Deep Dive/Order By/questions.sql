/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select first_name, last_name from employees
order by first_name asc, last_name desc;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
select first_name, last_name, age(birth_date) from employees
order birth_date);

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/

select first_name, last_name, hire_date from employees
where first_name ilike 'K%'
order by hire_date 
