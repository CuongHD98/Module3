USE QuanLySinhVien;
SELECT * FROM Student
WHERE StudentName LIKE 'H%';
SELECT * FROM Class
WHERE MONTH(StartDate) = 12;
SELECT * FROM Subject
WHERE Credit BETWEEN 3 AND 5;

SET SQL_SAFE_UPDATES = 0; 

UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';
SELECT Student.StudentName, Subject.SubName, Mark.Mark
FROM Student
INNER JOIN Mark ON Student.StudentID = Mark.StudentID
INNER JOIN Subject ON Mark.SubID = Subject.SubID
ORDER BY Mark.Mark DESC, Student.StudentName ASC;