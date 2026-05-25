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
        DBMS_OUTPUT.PUT_LINE('Grade: D'); -- If v_mark is between 60