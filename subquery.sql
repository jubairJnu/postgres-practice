CREATE Table employee (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(60),
    hired_date DATE,
    dept_name VARCHAR(10),
    salary INT
)

-- Inserting demo data
-- Inserting demo data
INSERT INTO employee (emp_name, hired_date, dept_name, salary)
VALUES
('John Smith', '2023-01-15', 'HR', 50000),
('Emily Davis', '2022-06-30', 'Finance', 60000),
('Michael Brown', '2021-09-20', 'IT', 75000),
('Sarah Johnson', '2023-05-10', 'Marketing', 55000),
('David Wilson', '2020-03-12', 'Operations', 70000),
('Anna White', '2019-11-05', 'Legal', 80000),
('James Taylor', '2021-04-25', 'Finance', 62000),
('Laura Martin', '2023-07-01', 'HR', 48000),
('Daniel Moore', '2022-02-18', 'IT', 72000),
('Olivia Hall', '2021-08-10', 'Marketing', 53000);


-- 

SELECT * FROM employee;
 
 --

 SELECT max(salary) FROM employee WHERE dept_name ='Finance';


-- find employees whos salary is greate than the highest salary  of finance dept
 SELECT * FROM employee WHERE salary > ( SELECT max(salary) FROM employee WHERE dept_name ='Finance');
