CREATE TABLE students (
	id 				integer 						PRIMARY KEY,
	first_name 		character varying(100) 			NOT NULL,
	middle_name 	character varying(100),
	last_name 		character varying(100) 			NOT NULL,
	age 			integer 						NOT NULL,
	location 		character varying(100) 			NOT NULL
);

INSERT INTO students (id, first_name, last_name, age, location) VALUES
(1, 'Juan', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Joseph', 21, 'Manila'),
(4, 'Issac', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6; -- OR (SELECT MAX(id) FROM students);

SELECT COUNT(id) as total_student FROM students;

SELECT * FROM STUDENTS WHERE location = 'Manila';

SELECT AVG(age) FROM STUDENTS;

SELECT * FROM students ORDER BY age DESC;