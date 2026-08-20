CREATE DATABASE TrainingInstitute;

USE TrainingInstitute;

CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    City VARCHAR(30),
    Phone VARCHAR(15)
);

CREATE TABLE Trainers (
    TrainerID VARCHAR(5) PRIMARY KEY,
    TrainerName VARCHAR(50),
    Trainer_Email VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID VARCHAR(5) PRIMARY KEY,
    CourseName VARCHAR(50),
    Fees DECIMAL(10,2),
    TrainerID VARCHAR(5),
    FOREIGN KEY (TrainerID)
        REFERENCES Trainers(TrainerID)
);

CREATE TABLE Enrollments (
    EnrollID VARCHAR(5) PRIMARY KEY,
    RollNo INT,
    CourseID VARCHAR(5),
    EnrollDate DATE,

    FOREIGN KEY (RollNo)
        REFERENCES Students(RollNo),

    FOREIGN KEY (CourseID)
        REFERENCES Courses(CourseID)
);

INSERT INTO Students VALUES
(101, 'Aarav Sharma', 'Jaipur', '98110-11223'),
(102, 'Diya Mehta', 'Delhi', '99880-22334'),
(103, 'Kabir Singh', 'Jaipur', '97770-33445'),
(104, 'Ananya Rao', 'Mumbai', '96660-44556'),
(105, 'Vivaan Joshi', 'Delhi', '95550-55667'),
(106, 'Ishita Nair', 'Pune', '94440-66778');

INSERT INTO Trainers VALUES
('T01', 'Ravi Verma', 'ravi@abc.com'),
('T02', 'Neha Gupta', 'neha@abc.com'),
('T03', 'Aslam Khan', 'aslam@abc.com');

INSERT INTO Courses VALUES
('C01', 'SQL', 5000, 'T01'),
('C02', 'Python', 7000, 'T02'),
('C03', 'Excel', 3000, 'T02'),
('C04', 'Power BI', 6000, 'T03');

INSERT INTO Enrollments VALUES
('E1', 101, 'C01', '2026-01-10'),
('E2', 101, 'C02', '2026-01-10'),
('E3', 101, 'C03', '2026-02-05'),
('E4', 102, 'C01', '2026-01-12'),
('E5', 102, 'C03', '2026-03-01'),
('E6', 102, 'C02', '2026-03-01'),
('E7', 103, 'C02', '2026-01-20'),
('E8', 103, 'C03', '2026-01-20'),
('E9', 104, 'C01', '2026-02-14'),
('E10', 105, 'C02', '2026-02-18');

SELECT * FROM Students;

SELECT * FROM Trainers;

SELECT * FROM Courses;

SELECT * FROM Enrollments;

SELECT s.StudentName, s.City, c.CourseName, c.Fees, t.TrainerName, e.EnrollDate
FROM Enrollments e
JOIN Students s
ON e.RollNo = s.RollNo
JOIN Courses c
ON e.CourseID = c.CourseID
JOIN Trainers t
ON c.TrainerID = t.TrainerID;

SELECT s.City, SUM(c.Fees) AS Total_Fees 
FROM Enrollments e 
JOIN Students s ON e.RollNo   = s.RollNo 
JOIN Courses  c ON e.CourseID = c.CourseID 
GROUP BY s.City 
ORDER BY Total_Fees DESC; 

SELECT COUNT(DISTINCT e.RollNo) AS Python_Students 
FROM Enrollments e 
JOIN Courses c ON e.CourseID = c.CourseID 
WHERE c.CourseName = 'Python';   -- exact, indexed, correct


SELECT s.StudentName, c.CourseName 
FROM Students s 
INNER JOIN Enrollments e ON s.RollNo   = e.RollNo 
INNER JOIN Courses     c ON e.CourseID = c.CourseID; 


SELECT s.StudentName, c.CourseName 
FROM Students s 
LEFT JOIN Enrollments e ON s.RollNo   = e.RollNo 
LEFT JOIN Courses     c ON e.CourseID = c.CourseID;


SELECT s.StudentName 
FROM Students s 
LEFT JOIN Enrollments e ON s.RollNo = e.RollNo 
WHERE e.RollNo IS NULL;   -- returns Ishita Nair 


SELECT s.StudentName, c.CourseName 
FROM Enrollments e 
RIGHT JOIN Courses c ON e.CourseID = c.CourseID 
LEFT  JOIN Students s ON e.RollNo  = s.RollNo; 

SELECT s.StudentName, c.CourseName 
FROM Enrollments e 
RIGHT JOIN Courses c ON e.CourseID = c.CourseID 
right  JOIN Students s ON e.RollNo  = s.RollNo

union

SELECT s.StudentName, c.CourseName 
FROM Enrollments e 
left JOIN Courses c ON e.CourseID = c.CourseID 
LEFT  JOIN Students s ON e.RollNo  = s.RollNo; 



SELECT s.StudentName, c.CourseName 
FROM Students s 
CROSS JOIN Courses c;

SELECT a.StudentName AS Student_1, 
       b.StudentName AS Student_2, 
       a.City 
FROM Students a 
JOIN Students b 
  ON a.City = b.City 
 AND a.RollNo < b.RollNo; 
 
 


