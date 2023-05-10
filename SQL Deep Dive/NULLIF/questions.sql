/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

select *, CASE
when special = 0 then nullif(1,1)
else special 
end
 from products
 
 -- or
 
 select *, nullif(special, 0) from products


