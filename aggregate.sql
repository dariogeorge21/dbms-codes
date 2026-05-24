-- Aggregate functions

SELECT COUNT(*) FROM STUDENTS; -- Counts the total number of rows in the STUDENTS table.
SELECT COUNT(name) FROM STUDENTS; -- Counts the number of non-NULL values 
SELECT AVG(age) FROM STUDENTS; -- Calculates the average value of the age column in the STUDENTS table.
SELECT MAX(age) FROM STUDENTS; -- Retrieves the maximum value of the age column in the STUDENTS table.
SELECT MIN(age) FROM STUDENTS; -- Retrieves the minimum value of the age column in the STUDENTS table.
SELECT SUM(mark) FROM STUDENTS; -- Calculates the sum of all values in the mark column of the STUDENTS table.

SELECT CONCAT(name, ' is born on ', date_of_birth) AS student_info FROM STUDENTS; -- Concatenates the name column with the string ' is born on ' and the date_of_birth column and returns it as student_info.
SELECT UPPER(name) AS uppercase_name FROM STUDENTS; -- Converts the name column to uppercase and returns it as uppercase_name.
SELECT LOWER(name) AS lowercase_name FROM STUDENTS; -- Converts the name column to lowercase and returns it as lowercase_name.
SELECT LENGTH(name) AS name_length FROM STUDENTS; -- Returns the length of the name column as name_length.
SELECT SUBSTRING(name, 1, 3) AS name_substring FROM STUDENTS; -- Extracts a substring from the name column starting from position 1 with a length of 3 and returns it as name_substring.

-- Group by

SELECT gender, COUNT(*) AS count FROM STUDENTS GROUP BY gender; -- Groups the rows in the STUDENTS table by the gender column and counts the number of rows in each group, returning the gender and the count as count.
SELECT gender, AVG(age) AS average_age FROM STUDENTS GROUP BY gender; -- Groups the rows in the STUDENTS table by the gender column and calculates the average value of the age column in each group, returning the gender and the average_age as average_age.  
SELECT gender, SUM(mark) AS total_mark FROM STUDENTS GROUP BY gender; -- Groups the rows in the STUDENTS table by the gender column and calculates the sum of all values in the mark column in each group, returning the gender and the total_mark as total_mark.
SELECT gender, mark, COUNT(*) AS count FROM STUDENTS GROUP BY gender, mark HAVING mark > 80; -- Groups the rows in the STUDENTS table by the gender and mark columns, counts the number of rows in each group, and filters the groups to include only those where the mark is greater than 80.
