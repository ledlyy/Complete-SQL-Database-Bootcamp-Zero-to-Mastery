/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

select distinct continent,
       sum(population) over(
       PARTITION by continent
       )
from country

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

select distinct continent,
       sum(population) over(partition by continent) as "ppc",
       concat(round(sum(population) over(partition by continent) /(sum(population) over()::float) * 100), ' percantage of population')
from country



/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

select distinct r.id,
       r.name,
       count(t.id) over(
       PARTITION by r.id
       )
from regions as r
inner join departments as d on d.region = r.code
inner join towns as t on t.department = d.code
order by r.id;
