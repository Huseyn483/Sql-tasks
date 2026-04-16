CREATE DATABASE YEMEK
USE YEMEK

CREATE TABLE Categories(
    Id INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50)
)

CREATE TABLE Meals(
    Id INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50),
    CategoryId INT NULL,
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
)

INSERT INTO Categories ([Name]) VALUES
('Atisdirmaliq'),
('Sirniyyat'),
('Icki'),
('Deniz yemeyi')


INSERT INTO Meals ([Name], CategoryId) VALUES
('Burger', 1),
('Pizza', 1),
('Pop kek', 2),
('Cola', 3),
('Su', NULL),        
('Et', NULL);    


SELECT Meals.[Name], Categories.[Name] AS Kateqoriadi
FROM Meals
INNER JOIN Categories
ON Meals.CategoryId = Categories.Id

SELECT Meals.Name, Categories.Name AS Kateqoriadi
FROM Meals
LEFT JOIN Categories
ON Meals.CategoryId = Categories.Id

SELECT Categories.Name, Meals.Name AS MealName
FROM Categories
LEFT JOIN Meals
ON Meals.CategoryId = Categories.Id

SELECT * FROM Meals WHERE CategoryId IS NULL

SELECT Categories.* FROM Categories
LEFT JOIN Meals
ON Meals.CategoryId = Categories.Id
WHERE Meals.Id IS NULL

SELECT Meals.[Name], Categories.[Name]
FROM Meals
FULL OUTER JOIN Categories
ON Meals.CategoryId = Categories.Id

