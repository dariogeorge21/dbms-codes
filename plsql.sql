-- PL/SQL

-- BEGIN: Starts a PL/SQL block.
-- END;: Ends a PL/SQL block.
-- DECLARE: Used to declare variables, constants, cursors, and exceptions.
-- EXCEPTION: Used to handle exceptions (errors) in PL/SQL.
-- IF...THEN...ELSE: Used for conditional statements.
-- LOOP: Used for looping through a block of code.
-- WHILE: Used for looping while a condition is true.
-- FOR: Used for looping through a range of values or a cursor.
-- PROCEDURE: Used to create a stored procedure.
-- FUNCTION: Used to create a stored function.
-- TRIGGER: Used to create a database trigger.

-- Example: A simple PL/SQL block that declares a variable, assigns a value to it, and prints it.

DECLARE
    v_message VARCHAR(50);
BEGIN
    v_message := 'Hello, PL/SQL!';
    DBMS_OUTPUT.PUT_LINE(v_message); -- Prints the value of v_message to the console
END;

-- Example: A PL/SQL block that uses an IF statement to check a condition and print a message accordingly.

DECLARE
    v_mark INT := 85; -- Declare a variable v_mark and initialize it with the value 85
BEGIN
    IF v_mark >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A'); -- If v_mark is 90 or above, print 'Grade: A'
    ELSEIF v_mark >= 80 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B'); -- If v_mark is between 80 and 89, print 'Grade: B'
    ELSEIF v_mark >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C'); -- If v_mark is between 70 and 79, print 'Grade: C'
    ELSEIF v_mark >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: D'); -- If v_mark is between 60 and 69, print 'Grade: D'
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: F'); -- If v_mark is below 60 print 'Grade: F'
    END IF;
END;

-- Example: A PL/SQL block that uses a FOR loop to print numbers from 1 to 10.

DELCARE i INT DEFAULT 1;
BEGIN
    WHILE i <= 10 DO
        DBMS_OUTPUT.PUT_LINE(i);
        i := i+1;
    END WHILE
END;

-- Example: A PL/SQL block to find factorial of a number using a WHILE loop and input from user

DECLARE
    n INT := 5; -- You can change this value to calculate factorial for a different number
    result INT DEFAULT 1;
    i INT DEFAULT 1;
BEGIN
    WHILE i <= n DO
        result := result * i;
        i := i + 1;
    END WHILE;
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is: ' || result); -- Prints the factorial of n to the console
END;

-- Example: To find age category using IF statement

DECLARE
    age INT := 25; -- You can change this value to test with different ages
BEGIN
    IF age < 13 THEN
        DBMS_OUTPUT.PUT_LINE('Child'); -- If age is less than 13, print 'Child'
    ELSIF age >= 13 AND age < 20 THEN
        DBMS_OUTPUT.PUT_LINE('Teenager'); -- If age is between 13 and 19, print 'Teenager'
    ELSIF age >= 20 AND age < 60 THEN
        DBMS_OUTPUT.PUT_LINE('Adult'); -- If age is between 20 and 59, print 'Adult'
    ELSE
        DBMS_OUTPUT.PUT_LINE('Senior'); -- If age is 60 or above, print 'Senior'
    END IF;
END;
