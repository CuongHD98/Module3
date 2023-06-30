CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class(
	ClassID INT PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME NOT NULL,
    Status BIT
);
CREATE TABLE Student(
	StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(30) NOT NULL,
    Address VARCHAR(50),
    Phone VARCHAR(20),
    Status BIT,
    ClassID INT NOT NULL,
    FOREIGN KEY(ClassID) REFERENCES Class(ClassID)
);
CREATE TABLE Subject(
	SubID INT PRIMARY KEY AUTO_INCREMENT,
    SubName VARCHAR(30) NOT NULL,
    Credit TINYINT NOT NULL DEFAULT 1 CHECK(Credit >= 1),
    Status BIT DEFAULT 1
);
CREATE TABLE Mark(
	MarkID INT PRIMARY KEY AUTO_INCREMENT,
    SubID INT NOT NULL,
    StudentID INT NOT NULL,
    UNIQUE KEY(SubID, StudentID),
    Mark FLOAT DEFAULT 0 CHECK(Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    FOREIGN KEY(SubId) REFERENCES Subject(SubId),
    FOREIGN KEY(StudentId) REFERENCES Student(StudentId)
);

USE QUANLYSINHVIEN;
INSERT INTO Class
VALUES(1,"A1","2008-12-20",1);
INSERT INTO Class(ClassName,StartDate,Status)
VALUES ('A2', '2008-12-22', 1);
INSERT INTO Class(ClassName,StartDate,Status)
VALUES ('B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);

INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);       

