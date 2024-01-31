-- CREATE STUDENTS TABLE
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
WHERE id = (SELECT MAX(id) FROM students);

-------------------------------------------------------------------
-- ACTIVITY (2024-01-31) JOINS activity

-- INIT RESEARCH_PAPERS TABLE
CREATE TYPE valid_grade AS ENUM ('A', 'B', 'C', 'D', 'E', 'F');
-- DROP TYPE valid_grade;
CREATE TABLE research_papers (
    id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    grade VALID_GRADE NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
-- DROP TABLE research_papers;

-- Insert 10 records to the new table
-- 2 students should have more than 1 research paper
-- 2 students should have 1 ungraded (NULL) research paper
INSERT INTO research_papers (id, student_id, grade)
VALUES (1, 1, 'A'),
    (2, 1, 'B'),
    (3, 2, 'B'),
    (4, 2, 'D'),
    (5, 3, 'C'),
    (6, 4, NULL),
    (7, 5, NULL),
    (8, 1, 'B'),
    (9, 1, 'E'),
    (10, 2, 'F');
-- Query all students with multiple research papers 
-- (select first_name, last_name, and number_of_research_papers only)
SELECT s.first_name first_name,
    s.last_name last_name,
    COUNT(rp.id) AS number_of_research_papers
FROM students s
    INNER JOIN research_papers rp ON s.id = rp.student_id
GROUP BY s.id;
-- Query all students with ungraded research papers 
-- (select first_name, last_name, research_paper_id, and grade only)
SELECT s.first_name first_name,
    s.last_name last_name,
    rp.id research_paper_id,
    rp.grade grade
FROM students s
    INNER JOIN research_papers rp ON s.id = rp.student_id
WHERE rp.grade IS NULL;