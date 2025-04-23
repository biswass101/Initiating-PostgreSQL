-- table creation
drop table employees;
drop table departments;


create table departments (
	department_id int primary key,
	depratment_name varchar(50)
);

create table employees (
	epmployee_id int primary key,
	employee_name varchar(50),
	age int,
	email varchar(50),
	department_id INT references departments(department_id),
	slary numeric(10, 2),
	status varchar(50)
);



insert into departments(department_id, depratment_name) values 
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Finance');

insert into employees (epmployee_id, employee_name, age, email, department_id, slary, status) values
    (1, 'Alice', 30, 'alice@example.com', 1, 60000, NULL),
    (2, 'Bob', 35, 'bob@example.net', 2, 65000, NULL),
    (3, 'Charlie', 28, 'charlie@google.com', 1, 55000, NULL),
    (4, 'David', 33, 'david@yahoo.com', 2, 62000, NULL),
    (5, 'Eve', 31, 'eve@example.net', 3, 58000, NULL),
    (6, 'Frank', 29, 'frank@example.com', 1, 59000, NULL),
    (7, 'Grace', 34, 'grace@google.com', 2, 63000, NULL),
    (8, 'Henry', 32, 'henry@yahoo.com', 3, 57000, NULL),
    (9, 'Ivy', 27, 'ivy@gmail.com', 1, 56000, NULL),
    (10, 'Jack', 36, 'jack@example.net', 2, 64000, NULL),
    (11, 'Karen', 29, 'karen@gmail.com', 3, 60000, NULL),
    (12, 'Liam', 33, 'liam@gmail.com', 1, 59000, NULL),
    (13, 'Mia', 31, 'mia@yahoo.com', 2, 62000, NULL),
    (14, 'Nora', 28, 'nora@yahoo.com', 3, 57000, NULL),
    (15, 'Oliver', 35, 'oliver@example.net', 1, 61000, NULL),
    (16, 'Penelope', 30, 'penelope@google.com', 2, 63000, NULL),
    (17, 'Quinn', 32, 'quinn@google.com', 3, 59000, NULL),
    (18, 'Rachel', 27, 'rachel@gmail.com', 1, 55000, NULL),
    (19, 'Sam', 34, 'sam@example.net', 2, 64000, NULL),
    (20, 'Taylor', 31, 'taylor@yahoo.com', 3, 58000, NULL);

select * from departments;
select * from employees;


-- Q1: Retrieve all employees with a salary greater than 60000

select * from employees
where salary > 60000;

-- Q2: Retrieve the names of employees using a limit of 2, starting from the 3rd employee.
select * from employees
limit 2 offset 2

-- Q2: Calculate and display the average age of all employees.
select avg(age)::numeric(10, 1) from employees;

-- Q4: Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'.
select employee_name, email from employees
where 
	email like '%example.com' or 
	email like '%example.net' or 
	email like '%google.com';

-- Q4: Retrieve the names of all employees who belong to the department titled 'Engineering'.

select employee_name from employees
inner join departments
on employees.department_id = departments.department_id
where department_name = 'Engineering';

-- Q5:  Update the status of the employee with the highest salary to 'Promoted'
-- s1: 
update employees
set status = 'Promoted'
where salary = (
	select salary
	from employees
	order by salary desc
	limit 1
);
select * from employees;
-- s2: 
update employees
set status = 'promoted'
where salary = (select max(salary) from employees);

-- Q5:  Retrieve the department name and the average salary of employees in each department
-- s1:
select department_name, avg(salary)
from departments
inner join employees on departments.department_id = employees.department_id
group by department_name;

-- s2: 
select department_name, avg(salary)
from (
	select department_name, salary from departments
	inner join employees on departments.department_id = employees.department_id
)
group by department_name;
