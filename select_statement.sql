-- select statement
--specify columns
select contact_name as name, country from customers

--all columns
select * from customers

-- select distinct
select distinct country from customers

-- count distinct
select count(distinct country) as total_country from customers

