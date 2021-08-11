--STEP 1: create table students with the following columns
CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY
    ,first_name varchar(255) NOT NULL
    ,middle_name varchar(255) NOT NULL
    ,last_name varchar(255) NOT NULL
    ,age INTEGER NOT NULL
    ,location varchar(255) NOT NULL
);

--STEP 2: insert 6 records in students table
INSERT INTO students(
    first_name
    ,middle_name
    ,last_name
    ,age
    ,location)
VALUES
    ('first_name_1', 'middle_name_1', 'last_name_1', 4, 'makati_1'),
    ('first_name_2', 'middle_name_2', 'last_name_2', 5, 'makati_2'),
    ('first_name_3', 'middle_name_3', 'last_name_3', 6, 'makati_3'),
    ('first_name_4', 'middle_name_4', 'last_name_4', 7, 'makati_4'),
    ('first_name_5', 'middle_name_5', 'last_name_5', 8, 'makati_5'),
    ('first_name_6', 'middle_name_6', 'last_name_6', 9, 'makati_6');

--STEP 3: update first record in students table
UPDATE students
SET 
    first_name = 'Ivan'
    ,middle_name = 'Ingram'
    ,last_name = 'Howard'
    ,age = 25
    ,location = 'Bulacan' 
WHERE id=1;

--STEP 4: delete table in last record
DELETE FROM students
WHERE ID = (
    SELECT ID FROM students
    ORDER BY ID DESC 
    LIMIT 1
);

--STEP 5: count of all students
SELECT COUNT(*) FROM students;

--STEP 6: select students with location Manila
SELECT * FROM students WHERE UPPER(location)='MANILA';

--STEP 7: displaying average age of all students
SELECT AVG(age) FROM students;

--STEP 8: display all students by age desc order
SELECT * FROM students ORDER BY age DESC;

--STEP 9: create classroom table with id, student_id, section columns
CREATE TABLE IF NOT EXISTS classroom (
    id SERIAL PRIMARY KEY
    ,student_id INTEGER NOT NULL
    ,section varchar(255) NOT NULL
);

--STEP 10: insert 10 records in classroom table
INSERT INTO classroom(
    student_id
    ,section
    )
VALUES
    (1, 'A'),
    (2, 'A'),
    (3, 'B'),
    (4, 'C'),
    (5, 'B'),
    (6, 'A'),
    (7, 'C'),
    (8, 'B'),
    (9, 'B'),
    (10, 'C')
    
--STEP 11: join students and classroom using left join, right join, inner join, full join
SELECT * 
FROM students a
INNER JOIN classroom b
on a.id=b.student_id

SELECT * 
FROM students a
LEFT JOIN classroom b
on a.id=b.student_id

SELECT * 
FROM students a
RIGHT JOIN classroom b
on a.id=b.student_id

SELECT * 
FROM students a
FULL JOIN classroom b
on a.id=b.student_id