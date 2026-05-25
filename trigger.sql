-- Trigger

-- Syntax:
-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER} {INSERT | UPDATE | DELETE}
-- ON table_name
-- FOR EACH ROW
-- BEGIN
--     -- Trigger logic goes here
-- END;

-- Example: Creating a trigger to update the grade of a student

SET SERVEROUTPUT ON;

CREATE TRIGGER update_grade
AFTER INSERT ON STUDENTS
FOR EACH ROW
BEGIN
    UPDATE STUDENTS
    SET mark = mark + 5
    WHERE id = NEW.id;
END;

-- Example: Creating a log table and a trigger to log deletions from the STUDENTS table

CREATE TABLE student_logs(
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(40),
    log_time time
);


CREATE TRIGGER delete_student_log
AFTER DELETE
ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_logs (name, log_time)
    VALUES (CONCAT('Deleted student ', OLD.name), CURRENT_TIME());
END;

-- Example: Creating a trigger to prevent updates to the mark column if the new mark is less than 50

CREATE TRIGGER check_mark
BEFORE INSERT
ON STUDENTS
FOR EACH ROW
BEGIN
    IF NEW.mark < 50 THEN
        DBMS_OUTPUT.PUT_LINE('Mark cannot be less than 50.'); -- Prints a message to the console if the new mark is less than 50
        RAISE_APPLICATION_ERROR(-20001, 'Mark cannot be less than 50.'); -- Raises an application error to prevent the insert operation if the new mark is less than 50 with a custom error message.
    END IF;
END;

-- Example: Creating a trigger to automatically update the grade based on the mark after an update

CREATE TRIGGER update_grade_after_mark_change
AFTER UPDATE
ON STUDENTS
FOR EACH ROW
BEGIN
    IF NEW.mark >= 90 THEN
        UPDATE STUDENTS
        SET grade = 'A'
        WHERE id = NEW.id;
    ELSEIF NEW.mark >= 80 THEN
        UPDATE STUDENTS
        SET grade = 'B'
        WHERE id = NEW.id;
    ELSEIF NEW.mark >= 70 THEN
        UPDATE STUDENTS
        SET grade = 'C'
        WHERE id = NEW.id;
    ELSEIF NEW.mark >= 60 THEN
        UPDATE STUDENTS
        SET grade = 'D'
        WHERE id = NEW.id;
    END IF;
END;