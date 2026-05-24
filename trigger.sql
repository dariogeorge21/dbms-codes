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

DELIMITER $$

CREATE TRIGGER update_grade
AFTER INSERT ON STUDENTS
FOR EACH ROW
BEGIN
    SET NEW.mark = NEW.mark + 5;
END;

-- Example: Creating a log table and a trigger to log deletions from the STUDENTS table

CREATE TABLE student_logs(
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(40),
    log_time time
);

DELIMITER $$

CREATE TRIGGER delete_student_log
AFTER DELETE
ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_logs (name, log_time)
    VALUES (CONCAT('Deleted student ', OLD.name), CURRENT_TIME());
END;