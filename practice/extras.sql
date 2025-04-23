-- q1: Retrieve the department with the highest average salary and num of employee
select department_name, avg_salary, num_of_emp from (
	select department_name, avg(salary) as avg_salary, count(e.epmployee_id) as num_of_emp
	from departments as d
	inner join employees as e on d.department_id = e.department_id
	group by department_name
) where avg_salary = (select max(avg_salary) from (
	select department_name, avg(salary) as avg_salary, count(e.epmployee_id) as num_of_emp
	from departments as d
	inner join employees as e on d.department_id = e.department_id
	group by department_name
))

-- testing
select * from employees;
select * from departments;

-- q2: Retrieve the employees who earn more than the average salary of their respective departments
select a.employee_name, a.salary, a.department_name, b.avg_salary
from (
	select employee_name, salary, department_name
	from departments as d
	inner join employees as e on d.department_id = e.department_id
) as a
inner join
(
	select avg(salary) as avg_salary, department_name
	from departments as d
	inner join employees as e on d.department_id = e.department_id
	group by department_name
) as b on a.department_name = b.department_name
where salary > avg_salary






