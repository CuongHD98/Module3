USE QuanLySinhVien;

-- having --
SELECT Subject.*
FROM  Subject
GROUP BY SubID
HAVING MAX(Credit) >= ALL(SELECT MAX(Credit) FROM Subject);
 -- not having --
SELECT Subject.*
FROM  Subject
WHERE Credit = (SELECT MAX(Credit) FROM Subject);

SELECT Subject.*, Mark.Mark AS MAXMark
FROM Subject
JOIN Mark ON Subject.SubID = Mark.SubID
WHERE Mark.Mark = (SELECT MAX(Mark.Mark) FROM Mark);

SELECT Student.*, AVG(Mark.Mark)
FROM Student
JOIN Mark ON Student.StudentID = Mark.StudentID
GROUP BY Student.StudentID
ORDER BY AVG(Mark.Mark);
