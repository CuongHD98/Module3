CREATE DATABASE btvnDAY5;
USE btvnDAY5;
CREATE TABLE Test(
	testID INT NOT NULL,
    Name VARCHAR(20) NOT NULL,
    PRIMARY KEY(testID)
);
CREATE TABLE Student(
	RN INT NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age TINYINT,
    PRIMARY KEY(RN)
);
CREATE TABLE StudentTest(
	RN INT,
    testID INT,
    Date DATETIME,
    Mark FLOAT,
    FOREIGN KEY(RN) REFERENCES Student(RN),
    FOREIGN KEY(testID) REFERENCES Test(testID)
);

INSERT INTO Student
VALUES(1,'Nguyen Hong Ha',20),
		(2,'Truong Ngoc Anh',30),
		(3,'Tuan Minh',25),
		(4,'Dan Truong',22);
INSERT INTO Test
VALUES(1,'EPC'),        
		(2,'DWMX'),        
		(3,'SQL1'),        
		(4,'SQL2');  
INSERT INTO StudentTest
VALUES(1,1,'2006-7-17',8),        
		(1,2,'2006-7-18',5),        
		(1,3,'2006-7-19',7),        
		(2,1,'2006-7-17',7),        
		(2,2,'2006-7-18',4),        
		(2,3,'2006-7-19',2),        
		(3,1,'2006-7-17',10),        
		(3,3,'2006-7-18',1); 
        
SELECT * FROM StudentTest;    
SELECT Student.Name, Test.Name, StudentTest.Mark,StudentTest.Date
FROM Student
JOIN StudentTest ON StudentTest.RN = Student.RN
JOIN Test ON StudentTest.testID = Test.testID;

SELECT Student.*
FROM Student
LEFT JOIN StudentTest ON StudentTest.RN = Student.RN
WHERE StudentTest.testID is NULL;

SELECT Student.Name, Test.Name, StudentTest.Mark,StudentTest.Date
FROM Student
JOIN StudentTest ON StudentTest.RN = Student.RN
JOIN Test ON StudentTest.testID = Test.testID
WHERE StudentTest.Mark < 5;

SELECT Student.Name, AVG(StudentTest.Mark) AS Average
FROM Student
JOIN StudentTest ON StudentTest.RN = Student.RN
GROUP BY Student.Name
ORDER BY AVG(StudentTest.Mark) DESC;

SELECT Student.Name, AVG(StudentTest.Mark) AS Average
FROM Student
JOIN StudentTest ON StudentTest.RN = Student.RN
GROUP BY Student.Name
HAVING AVG(StudentTest.Mark) >= ALL(SELECT AVG(StudentTest.Mark) FROM StudentTest GROUP BY StudentTest.RN);

SELECT Test.Name, MAX(StudentTest.Mark) 
FROM Test
JOIN StudentTest ON StudentTest.testID = Test.testID
GROUP BY Test.Name
ORDER BY Test.Name;

SELECT Student.Name, Test.Name
FROM Student
LEFT JOIN StudentTest ON StudentTest.RN = Student.RN
LEFT JOIN Test ON StudentTest.testID = Test.testID;

SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Age = Age + 1;
SELECT * FROM Student;  

ALTER TABLE Student
ADD Status VARCHAR(10); 

UPDATE Student
SET Status = CASE WHEN age < 30 THEN 'Young' ELSE 'Old' END;
SELECT * FROM Student; 

CREATE VIEW vwStudentTestList AS
SELECT Student.Name AS StudentName, Test.Name AS TestName, StudentTest.Mark, StudentTest.Date
FROM Student
JOIN StudentTest ON StudentTest.RN = Student.RN
JOIN Test ON StudentTest.testID = Test.testID
ORDER BY StudentTest.Date;
SELECT * FROM vwStudentTestList;

DELIMITER //
DROP PROCEDURE IF EXISTS `spViewStatus`//
CREATE PROCEDURE spViewStatus(IN StudentName VARCHAR(20), IN TestName VARCHAR(20))

BEGIN
 
END //
DELIMITER ;






	      
