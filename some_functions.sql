-- min
select min(price) 
from products;

-- max
select max(price)
from products;

-- count
select count(customer_id)
from customers;

select count(customer_id) from customers
where city = 'London';

-- sum
select sum(quantity)
from order_details

-- avg
select avg(price)::numeric(10, 2)
from products;


