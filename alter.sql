-- Alter table

ALTER TABLE STUDENTS ADD COLUMN grade char(1); -- Adds a new column named 'grade' of type char(1) to the STUDENTS table.
ALTER TABLE STUDENTS ADD COLUMN dept_id char(3); -- Adds a new column named 'dept_id' of type char(3) to the STUDENTS table.
ALTER TABLE STUDENTS ADD FOREIGN KEY (dept_id) REFERENCES DEPARTMENTS(dept_id); -- Adds a foreign key constraint to the 'dept_id' column in the STUDENTS table, referencing the 'dept_id' column in the DEPARTMENTS table.
ALTER TABLE STUDENTS DROP COLUMN grade; -- Removes the 'grade' column from the STUDENTS table.
ALTER TABLE STUDENTS MODIFY COLUMN name VARCHAR(20); -- Modifies the 'name' column in the STUDENTS table to have a data type of VARCHAR(20) instead of its previous type.
ALTER TABLE STUDENTS RENAME TO S_STUDENTS; -- Renames the STUDENTS table to S_STUDENTS.
ALTER TABLE S_STUDENTS RENAME COLUMN dob TO date_of_birth; -- Renames the 'dob' column in the S_STUDENTS table to 'date_of_birth'.
