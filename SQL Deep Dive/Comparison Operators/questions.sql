-- How many female customers do we have from the state of Oregon (OR)?

select count(*) from customers
where gender='F' and state = 'OR';

answer: 106

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)

select count(*) from customers
where age > 44 and income >= 100000

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
* Write your query here
*/

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
/*
* Write your query here
*/
