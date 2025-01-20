SELECT country, count(*), avg(age) FROM student
GROUP BY country
HAVING avg(age)> 20

;

-- count student  who born in each year

