
CREATE Table student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    course VARCHAR(80),
    grade CHAR(2),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(150),
    dob DATE,
    country VARCHAR(30),
    blood_group CHAR(3)

)


-- instert

INSERT INTO student 
(first_name, last_name, age, course, grade, email, address, dob, country, blood_group) 
VALUES
('John', 'Doe', 20, 'Computer Science', 'A', 'john.doe1@example.com', '123 Main St, Springfield', '2004-03-15', 'USA', 'O+'),
('Jane', 'Smith', 22, 'Mathematics', 'B+', 'jane.smith1@example.com', '456 Elm St, Riverdale', '2002-08-22', 'Canada', 'A-'),
('Alice', 'Johnson', 19, 'Physics', 'A-', 'alice.johnson1@example.com', '789 Oak St, Metropolis', '2005-05-12', 'USA', 'B+'),
('Bob', 'Brown', 21, 'Chemistry', 'B', 'bob.brown1@example.com', '321 Maple St, Gotham', '2003-10-07', 'UK', 'O-'),
('Emily', 'Davis', 23, 'Biology', 'A+', 'emily.davis1@example.com', '654 Pine St, Star City', '2001-02-18', 'Canada', 'AB+'),
('Michael', 'Wilson', 20, 'Engineering', 'B-', 'michael.wilson1@example.com', '987 Cedar St, Smallville', '2004-09-30', 'India', 'A+'),
('Sophia', 'Taylor', 18, 'Economics', 'A', 'sophia.taylor1@example.com', '111 Birch St, Central City', '2006-01-25', 'India', 'B-'),
('Chris', 'Anderson', 21, 'Philosophy', 'B+', 'chris.anderson1@example.com', '222 Ash St, Coast City', '2003-06-14', 'Australia', 'O+'),
('Olivia', 'Martinez', 20, 'Psychology', 'A', 'olivia.martinez1@example.com', '333 Cherry St, Starling City', '2004-11-03', 'USA', 'AB-'),
('David', 'Clark', 22, 'Literature', 'B', 'david.clark1@example.com', '444 Walnut St, Blüdhaven', '2002-04-09', 'UK', 'A-');


SELECT * FROM student  ;


SELECT DISTINCT grade from student;

DROP Table student;


SELECT * FROM student
WHERE country ='USA';

SELECT * FROM student
WHERE grade = 'A-' AND course = 'Physics';

-- select student from usa or india and age 20

SELECT * FROM student
WHERE (country = 'USA' OR country = 'India') AND age =20;

SELECT * FROM student

WHERE (grade = 'A' OR grade = 'B') AND (course = 'Economics' OR course = 'Chemistry');

-- not in india

SELECT * FROM student 

WHERE country <> 'India' AND country <> 'UK';




SELECT concat(first_name) as fullName, * from  student;

SELECT count(age)  from student;


SELECT * FROM student
WHERE grade IS NOT NULL;

SELECT * FROM student
WHERE grade = NULL;

-- set default if nulll

SELECT COALESCE(grade, 'no grade') FROM student;



SELECT * FROM student 
;


UPDATE student set grade = 'N' 
WHERE student_id = 2;

CREATE Table timez (
    ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone
);

INSERT INTO timez values('2025-01-20 10:00:00','2025-01-20 10:00:00');

SELECT * FROM timez;

SELECT now() :: date;

SELECT CURRENT_DATE;

SELECT to_char(now(),'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year 2 day';

