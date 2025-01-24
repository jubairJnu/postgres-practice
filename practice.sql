-- Active: 1737294824808@@127.0.0.1@5432@office
CREATE Table empolyee(
    emp_id  SERIAL PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    dept_id INT REFERENCES department(dept_id),
    salary INT,
    hired_date DATE DEFAULT CURRENT_DATE
    );

    DROP Table empolyee;




    CREATE Table department (
        dept_id SERIAL PRIMARY KEY,
        dept_name VARCHAR(30) NOT NULL
    );

    DROP Table department;

    INSERT INTO department (dept_name) values('IT'), ('HR'), ('Finance'), ('Marketing'), ('Sales');

    SELECT * FROM department;

    INSERT INTO empolyee (emp_name, dept_id, salary, hired_date) 
    VALUES
    ('Jubair', 1, 50000, '2021-01-01'), 
    ('Rahim', 2, 40000, '2021-01-01'), 
    ('Karim', 3, 30000, '2022-01-01'), 
    ('Rahman', 4, 20000, '2023-01-01'), 
    ('Rahim', 5, 10000, '2024-01-01'),
    ('Jaber', 1, 50000, '2023-01-01'),
    ('Rahim', 2, 40000, '2022-01-01'), 
    ('Karim', 3, 30000, '2021-01-01'), 
    ('Rahman', 4, 20000,'2025-01-01'), 
    ('Rahim', 5, 10000,'2022-06-01'),
    ('Jaber', 1, 50000, '2021-01-01'), 
    ('Rahim', 2, 40000, '2021-01-01'), 
    ('Karim', 3, 30000, '2024-01-01' ), 
    ('Rahman', 4, 20000, '2025-01-03' ), 
    ('Rahim', 5, 10000, '2022-01-01');

    selec

    -- SELECT * FROM empolyee 
    -- JOIN department ON employee.dept_id = department.dept_id; 

    SELECT * FROM empolyee JOIN department ON empolyee.dept_id = department.dept_id;


    -- show department name with average salary
    SELECT dept_name, AVG(salary) FROM department JOIN empolyee USING(dept_id) GROUP BY dept_name;

-- count employees in each department

SELECT dept_name , COUNT(*) FROM department JOIN empolyee USING(dept_id) GROUP BY dept_name;

-- shwo the department name with the highest salary
SELECT dept_name , round(AVG(salary)) FROM department JOIN empolyee USING(dept_id) GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1;

-- count employees in each year

SELECT EXTRACT(YEAR FROM hired_date) AS year, COUNT(*) FROM empolyee GROUP BY year;

-- show the department name with the highest salary in 2021
SELECT dept_name ,round(AVG(salary)) 
FROM  department JOIN empolyee USING(dept_id) WHERE(EXTRACT(YEAR FROM hired_date)) = 2021 GROUP BY dept_name ORDER BY AVG(salary)  LIMIT 1; 

--

CREATE Table customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL

);

CREATE Table orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    customer_id INT REFERENCES customer(customer_id),
    total_amount INT NOT NULL
);

INSERT INTO customer (customer_name, address, phone) VALUES('Jubair', 'Dhaka', '01700000000'), ('Rahim', 'Dhaka', '01700000001'), ('Karim', 'Dhaka', '01700000002'), ('Rahman', 'Dhaka', '01700000003'), ('Jaber', 'Dhaka', '01700000004');


INSERT INTO orders (order_date, customer_id, total_amount) 
VALUES('2021-05-01', 3, 5000), 
('2021-01-01', 2, 4000), ('2021-01-01', 3, 3000),
 ('2022-01-01', 4, 2000), ('2021-02-01', 5, 1000), 
 ('2022-01-01', 1, 5000), ('2021-02-01', 2, 4000), 
 ('2021-01-01', 3, 3000), ('2021-02-01', 4, 2000), 
 ('2025-01-01', 5, 1000), ('2021-03-01', 1, 5000), 
 ('2023-01-01', 2, 4000), ('2021-05-01', 3, 3000), 
 ('2024-01-01', 4, 2000), ('2022-06-01', 5, 1000);

DROP Table orders

-- Find Customers who place more than 2 orders and calculate the total amount of spent by each customer

SELECT customer_name , COUNT(*) AS order_count, SUM(total_amount) AS total_spent 
FROM customer JOIN orders USING(customer_id) GROUP BY customer_name HAVING COUNT(*) >= 15;

-- find total amount of orders placed in each month of 2021

SELECT total_amount , EXTRACT(MONTH FROM order_date) as month , SUM(total_amount)
FROM orders WHERE EXTRACT(YEAR FROM order_date) = 2021 GROUP BY month, total_amount;

-- find the customer who placed the highest number of orders in 2021

SELECT customer_name , count(*) as order_count from orders 
JOIN customer USING(customer_id) WHERE EXTRACT(YEAR FROM order_date) = 2021  
GROUP BY customer_name
ORDER BY order_count DESC LIMIT 1 ;


CREATE DATABASE office;







