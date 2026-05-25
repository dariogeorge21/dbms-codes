-- Procedures

-- Syntax for creating a procedure
-- CREATE PROCEDURE procedure_name (parameters)
-- BEGIN
--     -- Procedure logic goes here
-- END;

-- Example: Creating a procedure to update the mark of a student

CREATE PROCEDURE update_mark(IN mark INT, IN student_name VARCHAR(50))
BEGIN
    UPDATE STUDENTS
    SET mark = mark + 5
    WHERE name = student_name;
END;

-- Example: Creating a procedure to calculate the average mark of students in a specific department

CREATE PROCEDURE average_mark_by_department(IN dept_p VARCHAR(3), OUT avg_mark FLOAT)
BEGIN
    SELECT AVG(mark) into avg_mark FROM STUDENTS where dept=dept_p;
END;

-- Example: Creating a procedure to delete a student by name

CREATE PROCEDURE delete_student(IN student_NAME VARCHAR(50))
BEGIN
    DELETE FROM STUDENTS WHERE NAME = student_NAME;
END;

-- Example: Creating a procedure to insert a new student into the STUDENTS table

CREATE PROCEDURE insert_student(
    IN p_id INT,
    IN p_name VARCHAR(50),
    IN p_mark INT,
    IN p_dept VARCHAR(3)
)
BEGIN
    INSERT INTO STUDENTS (id, name, mark, dept) VALUES (p_id, p_name, p_mark, p_dept);
END;