CREATE TABLE classrooms (
    id INT NOT NULL,
    student_id INT NOT NULL,
    section varchar(1) NOT NULL,
    PRIMARY KEY (id) -- FOREIGN KEY (student_id) REFERENCES students(id)
);
INSERT INTO classrooms (id, student_id, section)
VALUES (1, 1, 'A'),
    (2, 2, 'A'),
    (3, 3, 'B'),
    (4, 4, 'C'),
    (5, 5, 'B'),
    (6, 6, 'A'),
    (7, 7, 'C'),
    (8, 8, 'B'),
    (9, 9, 'B'),
    (10, 10, 'C');
-- DROP TABLE classrooms;
SELECT *
FROM students s
    INNER JOIN classrooms c ON c.student_id = s.id;

-- 
