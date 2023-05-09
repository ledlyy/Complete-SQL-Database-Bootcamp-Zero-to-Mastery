
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

select concat(b.firstname, ' ', b.lastname) as "name", a.orderid, b.customerid, b.state from orders as a
inner join customers as b on b.customerid = a.customerid
where b.state in ('OH', 'NY', 'OR')
order by a.orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

select p.title, p.prod_id, i.quan_in_stock as "inventory" from products as p
inner join inventory as i on p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select concat(e.first_name, ' ', e.last_name) as "name", e.emp_no, de.dept_no, d.dept_name from employees as e 
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
order by e.emp_no;



