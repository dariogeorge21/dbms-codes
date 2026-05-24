
-- Inner Join

SELECT s.name, d.dept_name from STUDENTS s INNER JOIN DEPARTMENTS d ON s.dept_id = d.dept_id; -- Retrieves the name of students and their corresponding department names by performing an inner join between the STUDENTS and DEPARTMENTS tables based on the dept_id column.
SELECT s.name, d.dept_name from STUDENTS s INNER JOIN DEPARTMENTS d ON s.dept_id = d.dept_id INNER JOIN grades g ON s.grade = g.grade; -- Retrieves the name of students and their corresponding department names by performing an inner join between the STUDENTS, DEPARTMENTS, and grades tables based on the dept_id and grade columns.

-- Left Join

SELECT s.name, d.dept_name from STUDENTS s LEFT JOIN DEPARTMENTS d ON s.dept_id = d.dept_id; -- Retrieves the name of students and their corresponding department names by performing a left join between the STUDENTS and DEPARTMENTS tables based on the dept_id column. This will include all students, even those without a matching department.
SELECT s.name, d.dept_name from STUDENTS s LEFT JOIN DEPARTMENTS d ON s.dept_id = d.dept_id LEFT JOIN grades g ON s.grade = g.grade; -- Retrieves the name of students and their corresponding department names by performing a left join between the STUDENTS, DEPARTMENTS, and grades tables based on the dept_id and grade columns. This will include all students, even those without a matching department or grade.

-- Right Join

SELECT s.name, d.dept_name from STUDENTS s RIGHT JOIN DEPARTMENTS d ON s.dept_id = d.dept_id; -- Retrieves the name of students and their corresponding department names by performing a right join between the STUDENTS and DEPARTMENTS tables based on the dept_id column. This will include all departments, even those without a matching student.
SELECT s.name, d.dept_name from STUDENTS s RIGHT JOIN DEPARTMENTS d ON s.dept_id = d.dept_id RIGHT JOIN grades g ON s.grade = g.grade; -- Retrieves the name of students and their corresponding department names by performing a right join between the STUDENTS, DEPARTMENTS, and grades tables based on the dept_id and grade columns. This will include all departments, even those without a matching student or grade.

-- Full Join

SELECT s.name, d.dept_name from STUDENTS s FULL JOIN DEPARTMENTS d ON s.dept_id = d.dept_id; -- Retrieves the name of students and their corresponding department names by performing a full join between the STUDENTS and DEPARTMENTS tables based on the dept_id column. This will include all students and all departments, even those without a matching record in the other table.
SELECT s.name, d.dept_name from STUDENTS s FULL JOIN DEPARTMENTS d ON s.dept_id = d.dept_id FULL JOIN grades g ON s.grade = g.grade; -- Retrieves the name of students and their corresponding department names by performing a full join between the STUDENTS, DEPARTMENTS, and grades tables based on the dept_id and grade columns. This will include all students, all departments, and all grades, even those without a matching record in the other tables.
