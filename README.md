# Initiating-PostgreSQL-Practice-Problems

# 📊 PostgreSQL Department & Employee Management

This project demonstrates fundamental SQL operations using PostgreSQL. It includes schema creation, data insertion, and a series of queries showcasing SQL features like `JOIN`, `GROUP BY`, `UPDATE`, filtering with `LIKE`, and more.

---

## 🗂️ Tables

### 1. `departments`
| Column Name      | Data Type     | Description              |
|------------------|---------------|--------------------------|
| `department_id`  | `INT`         | Primary key              |
| `depratment_name`| `VARCHAR(50)` | Name of the department   |

### 2. `employees`
| Column Name      | Data Type        | Description                          |
|------------------|------------------|--------------------------------------|
| `epmployee_id`   | `INT`            | Primary key                          |
| `employee_name`  | `VARCHAR(50)`    | Name of the employee                 |
| `age`            | `INT`            | Age of the employee                  |
| `email`          | `VARCHAR(50)`    | Employee email                       |
| `department_id`  | `INT`            | Foreign key referencing departments  |
| `slary`          | `NUMERIC(10, 2)` | Salary of the employee               |
| `status`         | `VARCHAR(50)`    | Current status (e.g., Promoted)      |

---

## 🧪 Sample Queries

### 🔹 Q1: Retrieve all employees with a salary greater than 60000

**Objective**: Retrieve all employees whose salary exceeds 60000.

```sql
SELECT * FROM employees
WHERE slary > 60000;
```

### 🔹 Q2: Retrieve the names of employees using a limit of 2, starting from the 3rd employee.

**Objective**: Use the `LIMIT` and `OFFSET` clauses to retrieve employee records starting from the 3rd employee, limiting the result to 2 employees.

```sql
SELECT * FROM employees
LIMIT 2 OFFSET 2;
```

### 🔹 Q3: Calculate and display the average age of all employees

**Objective**: Calculate the average age of all employees in the `employees` table.

```sql
SELECT AVG(age)::NUMERIC(10, 1) FROM employees;
```

### 🔹 Q4: Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'

**Objective**: Retrieve employee names and emails that match any of the specified domains.

```sql
SELECT employee_name, email FROM employees
WHERE email LIKE '%example.com'
   OR email LIKE '%example.net'
   OR email LIKE '%google.com';
```

### 🔹 Q5: Retrieve the names of all employees who belong to the department titled 'Engineering'

**Objective**: Get the names of employees working in the 'Engineering' department.

```sql
SELECT employee_name FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
WHERE depratment_name = 'Engineering';
```

### 🔹 Q6: Update the status of the employee with the highest salary to 'Promoted'

**Objective**: Update the status of the highest-paid employee to 'Promoted'.

#### Solution 1:
```sql
UPDATE employees
SET status = 'Promoted'
WHERE salary = (
  SELECT salary
  FROM employees
  ORDER BY salary DESC
  LIMIT 1
);
```
#### Solution 2:
```sql
update employees
set status = 'promoted'
where salary = (select max(salary) from employees); 
```

### 🔹 Q7: Retrieve the department name and the average salary of employees in each department

**Objective**: Calculate the average salary of employees in each department.

#### Solution 1:
```sql
SELECT department_name, AVG(salary)
FROM departments
INNER JOIN employees ON departments.department_id = employees.department_id
GROUP BY department_name;
```

#### Solution 2:
```sql
select department_name, avg(salary)
from (
	select department_name, salary from departments
	inner join employees on departments.department_id = employees.department_id
)
group by department_name;
```



