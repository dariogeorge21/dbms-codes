
-- Index

CREATE INDEX find_name ON STUDENTS(name); -- Creates an index named find_name on the name column of the STUDENTS table to improve query performance when searching for students by name.
CREATE INDEX find_dept ON STUDENTS(dept_id); -- Creates an index named find_dept on the dept_id column of the STUDENTS table to improve query performance when searching for students by

-- View 

CREATE VIEW student_info AS SELECT name, date_of_birth, dept_id FROM STUDENTS; -- Creates a view named student_info that selects the name, date_of_birth, and dept_id columns from the STUDENTS table.
SELECT * FROM student_info; -- Retrieves all rows from the student_info view, which contains the name, date_of_birth, and dept_id of students from the STUDENTS table.

