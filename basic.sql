select version()

-- table creating
create table cars (
	brand varchar(255),
	model varchar(255),
	year INT
)

-- table viewing
select * from cars

-- single value insertion in table
insert into cars(brand, model, year) values ('Ford', 'Mustang', 1964);

-- multiple vlaues inserting into table
insert into cars (brand, model, year) values 
 ('Volvo', 'p1800', 1968),
  ('BMW', 'M1', 1978),
  ('Toyota', 'Celica', 1975);

-- fetching data from table
-- specify columns
SELECT brand, year from cars;
-- returning all columns
SELECT * FROM cars;

-- adding column
ALTER TABLE cars
ADD color VARCHAR(50);

-- update a existing records
UPDATE cars
SET color = 'red'
WHERE brand = 'Volvo';

SELECT * FROM cars;

UPDATE cars
set color = 'pink'
where model = 'M1';

select * from cars;
-- values of column will be same
update cars
set color = 'red';

select * from cars;

-- updating multiple columns
update cars
set color = 'yello', year = '2025'
where brand = 'Toyota';

select * from cars;

--alter column
-- changing column data type
-- q1
alter table cars
alter column year type varchar(4);

select * from cars;

-- q2
alter table cars
alter column color type varchar(55);

select * from cars;

-- Drop Column
alter table cars
drop column color;

select * from cars;

-- Delete Recodrs(Note: not specifying where can delete all records)
delete from cars
where brand = 'Volvo';
-- delete all recors method - 1
delete from cars;
-- delete all records mewthod -2 
truncate table cars
select * from cars

-- Delete table
drop table cars
select * from cars