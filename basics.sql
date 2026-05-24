-- CREATE TABLE

DROP TABLE IF EXISTS STUDENTS;

CREATE TABLE STUDENTS (
    id int,
    name varchar(23),
    gender char(1),
    dob date,
    mark int,
    age int,
    grade char(1),
    dept_id char(3),
    PRIMARY KEY (id),
    FOREIGN KEY (dept_id) REFERENCES DEPARTMENTS(dept_id),
    FOREIGN KEY (grade) REFERENCES grades(grade)
);
-- table for join operations
CREATE TABLE DEPARTMENTS (
    dept_id char(3),
    dept_name varchar(50),
    PRIMARY KEY (dept_id)
);
CREATE TABLE grades (
    grade char(1),
    description varchar(50),
    PRIMARY KEY (grade)
);

-- Insert table

INSERT INTO STUDENTS (
    id, name, gender, dob, mark, age, grade, dept_id) VALUES
    (1, 'Patros', 'M', '2002-03-20', 85, 16, 'A', 'CS'),
    (2, 'Paulos', 'M', '2001-01-19', 90, 22, 'A', 'ME'),
    (3, 'Markose', 'M', '2005-03-13', 78, 18, 'B', 'CS'),
    (4, 'Chocos', 'F', '2003-07-25', 92, 20, 'A', 'ME'),
    (5, 'Eldhose', 'M', '2006-11-30', 80, 17, 'B', 'CS');

INSERT INTO DEPARTMENTS (dept_id, dept_name) VALUES
    ('CS', 'Computer Science'),
    ('ME', 'Mechanical Engineering');

INSERT INTO grades (grade, description) VALUES
    ('A', 'Excellent'),
    ('B', 'Good'),
    ('C', 'Average'),
    ('D', 'Below Average'),
    ('F', 'Fail');

-- Update 

UPDATE STUDENTS 
SET gender = 'F'
WHERE name = 'Paulos';

-- Delete

DELETE FROM STUDENTS 
WHERE name = 'Chocos';
