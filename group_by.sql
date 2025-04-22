-- union
/*
The UNION operator is used to combine the result-set of two or more queries.

The queries in the union must follow these rules:

They must have the same number of columns
The columns must have the same data types
The columns must be in the same order
*/
select * from products;
select * from testproducts;

select product_id, product_name
from products
union
select testproduct_id, product_name
from testproducts
order by product_id;

-- group by
/*
The GROUP BY clause groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY clause is often used with aggregate functions like COUNT(), MAX(), MIN(), SUM(), AVG() to group the result-set by one or more columns.
*/

select count(customer_id), country
from customers
group by country;

