/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/

select prod_id, price, 
case 
when price > 20 then 'expensive'
when (price < 20 and price >10) then 'average'
else 'cheap'
END as "price status"
from products;
