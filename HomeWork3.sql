CREATE DATABASE HOMEWORK3
USE HOMEWORK3

-----------1ci task

CREATE TABLE Students(
    Id INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) DEFAULT 'xxx',
    Age INT NOT NULL,
    Point INT NOT NULL
)

INSERT INTO Students ([Name], Surname, Age, Point) VALUES
('Huseyn', 'Huseynli', 19, 90),
('Ayxan', 'Memmedli', 20, 75),
('Kenan', 'Isayev', 18, 85)

INSERT INTO Students ([Name], Age, Point)
VALUES ('Memmed', 21, 88)

SELECT * FROM Students

UPDATE Students SET Surname = 'Huseynov' WHERE Surname = 'xxx'

UPDATE Students SET Point = 95 WHERE Id = 1

SELECT * FROM Students WHERE Point BETWEEN 70 AND 90

SELECT Name, Surname FROM Students WHERE Age < 21

ALTER TABLE Students ADD AveragePoint INT CHECK (AveragePoint BETWEEN 0 AND 100)


--------- 2 ci task


CREATE TABLE students2(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50),
    Surname NVARCHAR(50),
    Age INT,
    Grade INT
)

INSERT INTO students2 ([Name], Surname, Age, Grade) VALUES
('Kamran', 'Isgenderov', 24, 78),
('Lale', 'Shukurova', 20, 92),
('Rauf', 'Jabbarli', 22, 65)

SELECT * FROM students2 WHERE Grade < (SELECT AVG(Grade) FROM students2)

SELECT * FROM students2 WHERE Grade > (SELECT AVG(Grade) FROM students2)

SELECT * FROM students2 WHERE Age = (SELECT MIN(Age) FROM students2)

SELECT * FROM students2 WHERE Age = (SELECT MAX(Age) FROM students2);
