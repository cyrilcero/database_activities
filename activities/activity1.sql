CREATE TABLE students (
	id 				integer 						PRIMARY KEY,
	first_name 		character varying(100) 			NOT NULL,
	middle_name 	character varying(100),
	last_name 		character varying(100) 			NOT NULL,
	age 			integer 						NOT NULL,
	location 		character varying(100) 			NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location) VALUES
(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
(2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
(3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
(4, 'Issac', 'Blank', 'Gray', 19, 'Laguna'),
(5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
(6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students
WHERE id = 6; -- OR (SELECT MAX(id) FROM students);