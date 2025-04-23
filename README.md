# Initiating-PostgreSQL

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
```sql
SELECT * FROM employees
WHERE slary > 60000;

### 🔹 Q2: Paginated Employee List (Limit & Offset)

**Objective**: Retrieve the names of employees, limit 2, starting from the 3rd employee.
```sql
SELECT * FROM employees
LIMIT 2 OFFSET 2;
