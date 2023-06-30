USE QuanLySinhVien;
SELECT Address, COUNT(Student.StudentID) AS SoLuongSV
FROM Student
GROUP BY Address;

SELECT Student.StudentID, Student.StudentName, AVG(Mark.Mark) AS DiemTB
FROM Student
JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID, Student.StudentName;

SELECT Student.StudentID, Student.StudentName, AVG(Mark.Mark) AS DiemTB
FROM Student
JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID, Student.StudentName
HAVING DiemTB >= 15;

SELECT Student.*, AVG(Mark.Mark) AS DiemTB
FROM Student
JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID, Student.StudentName
HAVING DiemTB >= ALL (SELECT AVG(Mark.Mark) FROM Mark GROUP BY Mark.StudentId);

