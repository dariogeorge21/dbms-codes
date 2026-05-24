
-- Select

SELECT * FROM STUDENTS; -- Retrieves all columns and rows from the STUDENTS table.
SELECT name FROM STUDENTS; -- Retrieves only the name column from all rows in the STUDENTS table.
SELECT name, dob FROM STUDENTS; -- Retrieves the name and dob columns from all rows in the STUDENTS table.
SELECT name as student_name FROM STUDENTS; -- Retrieves the name column from all rows in the STUDENTS table and renames it as student_name in the result set.
SELECT * FROM STUDENTS WHERE name = 'Patros'; -- Retrieves all columns and rows from the STUDENTS table where the name column is equal to 'Patros'.
SELECT * FROM STUDENTS WHERE dob < '2006-01-01'; -- Retrieves all columns and rows from the STUDENTS table where the dob column is less than '2006-01-01'.
SELECT * FROM STUDENTS WHERE grade = 'A' AND dept_id = 'CS'; -- Retrieves all columns and rows from the STUDENTS table where the grade column is equal to 'A' and the dept_id column is equal to 'CS'.
SELECT * FROM STUDENTS WHERE grade = 'B' OR grade = 'C'; -- Retrieves all columns and rows from the STUDENTS table where the grade column is equal to 'B' or 'C'.
SELECT * FROM STUDENTS WHERE age >= 18 AND age <= 22; -- Retrieves all columns and rows from the STUDENTS table where the age column is between 18 and 22 inclusive.
SELECT * FROM STUDENTS WHERE dept_id IN ('CS', 'ME'); -- Retrieves all columns and rows from the STUDENTS table where the dept_id column is either 'CS' or 'ME'.
SELECT * FROM STUDENTS WHERE name IS NULL; -- Retrieves all columns and rows from the STUDENTS table where the name column has a NULL value.
SELECT * FROM STUDENTS WHERE name IS NOT NULL; -- Retrieves all columns and rows from the STUDENTS table where the name column does not have a NULL value.
SELECT * FROM STUDENTS WHERE age BETWEEN 18 AND 22; -- Retrieves all columns and rows from the STUDENTS table where the age column is between 18 and 22 inclusive.



-- Order by
SELECT * FROM STUDENTS ORDER BY name; -- Orders the rows in the STUDENTS table by the name column in ascending order.
SELECT * FROM STUDENTS ORDER BY name DESC; -- Orders the rows in the STUDENTS table by the name column in descending order.
SELECT * FROM STUDENTS ORDER BY age; -- Orders the rows in the STUDENTS table by the age column in ascending order.
SELECT * FROM STUDENTS ORDER BY age DESC; -- Orders the rows in the STUDENTS table by the age column in descending order.

-- Limit
SELECT * FROM STUDENTS LIMIT 3; -- Retrieves the first 3 rows from the STUDENTS table.
SELECT * FROM STUDENTS LIMIT 2 OFFSET 1; -- Retrieves 2 rows from the STUDENTS table, starting from the second row (offset 1).
SELECT * FROM STUDENTS LIMIT 5 OFFSET 0; -- Retrieves the first 5 rows from the STUDENTS table, starting from the first row (offset 0).
SELECT * FROM STUDENTS LIMIT 10;

-- Like

SELECT * FROM STUDENTS WHERE name LIKE 'P%'; -- Retrieves all rows from the STUDENTS table where the name column starts with 'P'.
SELECT * FROM STUDENTS WHERE name LIKE '%s'; -- Retrieves all rows from the STUDENTS table where the name column ends with 's'.
SELECT * FROM STUDENTS WHERE name LIKE '%a%'; -- Retrieves all rows from the STUDENTS table where the name column contains 'a'.
SELECT * FROM STUDENTS WHERE name LIKE '___'; -- Retrieves all rows from the STUDENTS table where the name column is exactly 3 characters long.
SELECT * FROM STUDENTS WHERE name LIKE 'P__%'; -- Retrieves all rows from the STUDENTS table where the name column starts with 'P' and is at least 3 characters long.

-- Distinct

SELECT DISTINCT gender FROM STUDENTS; -- Retrieves the distinct values from the gender column in the STUDENTS table.
SELECT DISTINCT dept FROM STUDENTS; -- Retrieves the distinct values from the dept column in the STUD
