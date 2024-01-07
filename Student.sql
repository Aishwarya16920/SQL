CREATE SCHEMA student;
SHOW DATABASES;
CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL,
    major VARCHAR(20)
    -- major VARCHAR(20) DEFAULT "Undecided"
    -- major VARCHAR(20) UNIQUE
    -- PRIMARY KEY(student_id)
);
DESCRIBE student;
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP gpa;
INSERT INTO student VALUES(1, "Jack", "Biology");
-- INSERT INTO student(student_name, major) VALUES("Jack", "Biology");
INSERT INTO student VALUES(2, "Kate", "Sociology");
INSERT INTO student VALUES(3, "Claire", "Chemistry");
-- INSERT INTO student(student_id, student_name) VALUES(3, "Claire");
INSERT INTO student VALUES(4, "Jack", "Biology");
INSERT INTO student VALUES(5, "Mike", "Computer Science");
UPDATE student SET major = "Bio" WHERE major = "Biology";
UPDATE student SET major = "Computer Science" WHERE student_id = 4;
UPDATE student SET major = "Biochemistry" WHERE major = "Bio" OR major = "Chemistry";
UPDATE student SET student_name = "Tom", major = "undecided" WHERE student_id = 1;
DELETE FROM student WHERE student_id = 5;
DELETE FROM student WHERE student_name = "Tom" AND major = "Undecided";
DELETE FROM student;
SELECT student_name FROM student;
SELECT student_name, major FROM student;
SELECT * FROM student ORDER BY student_name;
SELECT * FROM student ORDER BY student_name DESC;
SELECT * FROM student ORDER BY major, student_id;
SELECT * FROM student ORDER BY student_id DESC LIMIT 2;
SELECT * FROM student WHERE major = "Biology";
SELECT student_name, major FROM student WHERE major = "Chemistry" OR major = "Biology";
SELECT student_name, major FROM student WHERE major <> "Chemistry";
SELECT * FROM student WHERE student_id > 3 AND student_name <> "Jack";
SELECT * FROM student WHERE student_name IN("Claire", "Kate", "Mike");
SELECT * FROM student;
DROP TABLE student;	