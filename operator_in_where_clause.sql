-- Operators in the WHERE clause
select * from categories

-- equal to
select * from categories
where category_id = 9

-- less than
select * from categories
where category_id < 5

-- greter than
select * from categories
where category_id > 5

-- less than or euqal
select * from categories
where category_id <= 5

-- greter than or equal
select * from categories
where category_id >= 5

-- not equal
select * from categories
where category_id <> 5

select * from categories
where category_id != 3

-- like
select * from categories
where category_name like 'B%' --zero, one or multiple char

-- and
select * from categories
where category_name = 'Beverages' and description like 'S%';

-- or
select * from products
where product_id >= 10 or price >= 20

-- in 
select * from products
where product_name in ('Tofu', 'Ikura');

-- between
select * from products
where price between 20 and 30;