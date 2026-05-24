-- Functions
-- Syntax:
-- CREATE FUNCTION function_name (parameters)
-- RETURNS return_data_type
-- BEGIN
--     -- Function logic goes here
-- END;

-- Example: Creating a function to calculate the average mark of students.

DELIMITER $$

CREATE FUNCTION average_mark()
RETURNS FLOAT
BEGIN
    DECLARE avg_mark FLOAT;
    SELECT AVG(mark) INTO avg_mark FROM STUDENTS;
    RETURN avg_mark;
END;

-- Example: Creating a function to determine the grade based on the mark.

CREATE FUNCTION calculate_grade(mark INT)
RETURNS CHAR(1)
BEGIN
    DECLARE grade CHAR(1);
    IF mark >= 90 THEN
        SET grade = 'A';
    ELSEIF mark >= 80 THEN
        SET grade = 'B';
    ELSEIF mark >= 70 THEN
        SET grade = 'C';
    ELSEIF mark >= 60 THEN
        SET grade = 'D';
    ELSE
        SET grade = 'F';
    END IF;
    RETURN grade;
END;

-- Example: Add two numbers using a function.

CREATE FUNCTION add(num1 int, num2 int)
RETURNS INT
BEGIN
    DECLARE SUM int;
    set sum = num1 + num2;
    RETURN SUM;
END;

-- Example: Create a function to calculate the factorial of a number.

CREATE FUNCTION factorial(n INT)
RETURNS INT
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE i INT DEFAULT 1;
    WHILE i <= n DO
        SET result = result * i;
        SET i = i + 1;
    END WHILE;
    RETURN result;
END;

-- Example: Create a function to check if a number is prime.

CREATE FUNCTION is_prime(n INT)
RETURNS BOOLEAN
BEGIN
    DECLARE i INT DEFAULT 2;
    IF n <= 1 THEN
        RETURN FALSE;
    END IF;
    -- witgout sqrt
    WHILE i < n DO
        IF n % i = 0 THEN
            RETURN FALSE;
        END IF;
        SET i = i + 1;
    END WHILE;
    RETURN TRUE;
END;