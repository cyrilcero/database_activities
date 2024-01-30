-- DATABASE ACTIVITIES 2024/01/29

-- CREATE TABLE
CREATE TABLE students (
	id integer PRIMARY KEY,
	first_name character varying(100) NOT NULL,
	middle_name character varying(100),
	last_name character varying(100) NOT NULL,
	age integer NOT NULL,
	location character varying(100) NOT NULL
);

-- INSERT DATA TO TABLE
INSERT INTO students (id, first_name, last_name, age, location)
VALUES (1, 'Juan', 'Cruz', 18, 'Manila'),
	(2, 'Anne', 'Wall', 20, 'Manila'),
	(3, 'Theresa', 'Joseph', 21, 'Manila'),
	(4, 'Issac', 'Gray', 19, 'Laguna'),
	(5, 'Zack', 'Matthews', 22, 'Marikina'),
	(6, 'Finn', 'Lam', 25, 'Manila');

-- UPDATE THE TABLE VALUES
UPDATE students
SET first_name = 'Ivan',
	middle_name = 'Ingram',
	last_name = 'Howard',
	age = 25,
	location = 'Bulacan'
WHERE id = 1;

-- DELETE DATA ENTRY
DELETE FROM students
WHERE id = 6;
-- OR (SELECT MAX(id) FROM students);

-- FOLLOW UP ACTIVITY
-- DISPLAY COUNT OF ALL STUDENTS
SELECT COUNT(id) AS total_students
FROM students;

-- SELECT ALL STUDENTS WITH LOCATION = MANILA
SELECT *
FROM STUDENTS
WHERE location = 'Manila';

-- DISPLAY THE AVERAGE AGE OF ALL STUDENTS
SELECT ROUND(AVG(age),2) AS student_average_age -- edited after class presentation
FROM STUDENTS;

-- DISPLAY ALL STUDENTS BY AGE DESCENDING ORDER
SELECT *
FROM students
ORDER BY age DESC;