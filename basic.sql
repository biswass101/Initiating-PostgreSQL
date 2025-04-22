-- version viewing for postgres
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
