-- group by and having 

SELECT COUNT(customer_id), country FROM customers
group by country
having count(customer_id) > 5;

-- Q: lists only orders with a total price of 400$ or more:
select * from products
select * from order_details

select sum(products.price) as total_price, order_details.order_id
from order_details
inner join products on order_details.product_id = products.product_id
group by order_id
having sum(products.price) > 400;

select * from t1;
select * from t2;
