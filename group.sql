SELECT country, count(*), avg(age) FROM student
GROUP BY country
HAVING avg(age)> 20

;

-- count student  who born in each year

SELECT extract(year from dob) as birth_year , count(*) FROM student 
GROUP BY birth_year
ORDER BY birth_year
;