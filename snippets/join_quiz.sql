CREATE TABLE Students(
    StudentID INT,
    StudentName VARCHAR(10)

);

CREATE TABLE Classes(
    ClassID INT,
    ClassName VARCHAR(10)

);

CREATE TABLE StudentClass(
    StudentID INT,
    ClassID INT
);

INSERT INTO Students(StudentID, StudentName)
VALUES (1, 'John'),
       (2, 'Matt'),
       (3, 'James');

INSERT INTO Classes(ClassID, ClassName)
VALUES (1, 'Maths'),
       (2, 'Arts'),
       (3, 'History');

INSERT INTO StudentClass(StudentID, ClassID)
VALUES (1,1),
       (1,2),
       (3,1),
       (3,2),
       (3,3);

SELECT *
FROM Students;

SELECT *
FROM Classes;

SELECT *
FROM StudentClass;

SELECT stud.StudentName, cl.ClassName
FROM students stud
INNER JOIN studentclass sc ON stud.studentid = sc.studentid
INNER JOIN Classes cl ON sc.classid = cl.classid;

SELECT stud.StudentName, sc.ClassID
FROM students stud
LEFT JOIN studentclass sc ON stud.studentid = sc.studentid
WHERE sc.classid IS NULL;

DROP TABLE students;
DROP TABLE Classes;
DROP TABLE StudentClass;
