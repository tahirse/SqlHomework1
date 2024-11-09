
-->>>>>>>>>>>>>>>>>>     TASK 1
CREATE DATABASE Market

USE Market

CREATE TABLE Products
(
Id int Primary Key Identity,
[Name] nvarchar(10),
Price int
)

ALTER TABLE Products ADD Brand nvarchar(10)

INSERT INTO Products
([Name],Price, Brand)
VALUES 
('Data 1',15,'Brand 1'),
('Data 2',125,'Brand 2'),
('Data 3',10,'Brand 3'),
('Data 4',5,'Brand 4'),
('Data 5',9,'Brand 5'),
('Data 6',45,'Brand 6'),
('Data 7',26,'Brand 7'),
('Data 8',37,'Brand 8'),
('Data 9',41,'Brand 9'),
('Data 10',28,'Brand 10'),
('Data 11',17,'Brand 11'),
('Data 12',20,'Brand 12'),
('Data 13',24,'Brand 13'),
('Data 14',15,'Brand 14')



INSERT INTO Products
([Name],Price, Brand)
VALUES 
('Data 18',15,'Brand 74')

UPDATE Products
SET Price = 25.5 WHERE [Name] = 'Data 10'

DELETE FROM Products WHERE [Name] = 'Data 1'

SELECT * FROM Products WHERE Price<(SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE Price>10

EXEC sp_rename 'Products.Id', 'Sira nomresi'
EXEC sp_rename 'Products.Sira nomresi', Id
SELECT * FROM Products WHERE Price LIKE '%5%'
EXEC sp_rename 'Products.[Name]', Ad
EXEC sp_rename 'Products.Ad', [Name]

SELECT * FROM Products WHERE Price LIKE '%5%'
SELECT * FROM Products WHERE Price LIKE '5%'
SELECT * FROM Products WHERE Price LIKE '%6'


SELECT * FROM Products WHERE [Name] LIKE '%18'

SELECT * FROM Products

-->>>>>>>>>>>>>>>>>>     TASK 2
USE Market

CREATE TABLE Employee
(
Id int Primary Key Identity,
Fullname nvarchar(255) NOT NULL,
Age int Check(Age>0) NOT NULL,
Email nvarchar(15) Unique NOT NULL,
Salary decimal(18,2) Check(Salary>=300 AND Salary<=2000)
)
DROP TABLE Employee


INSERT INTO Employee
(Fullname,Age,Email,Salary)
VALUES 
('Sahib Rehimov',20,'sahib@gmail.com',200)


INSERT INTO Employee
(Fullname,Age,Email,Salary)
VALUES 
('Revan Abbasov',22,'revan@gmail.com',301)

INSERT INTO Employee
(Fullname,Age,Email,Salary)
VALUES 
('Kerim Selimov',22,'kerim@gmail.com',300)

INSERT INTO Employee
(Fullname,Age,Email,Salary)
VALUES 
('Elnur Salamov',28,'elnur@gmail.com',1500),
('Rauf Bextiyarov',29,'rauf@gmail.com',370.57),
('Selim Memmedov',33,'selim@gmail.com',870.95),
('Samir Demirov',18,'samir@gmail.com',1120.5),
('Vusal Babayev',22,'vusal@gmail.com',450.79)


SELECT * FROM Employee WHERE Salary<(SELECT AVG(Salary) FROM Employee)


UPDATE Employee
SET Salary=1000.15 Where Fullname='Elnur Salamov'

DELETE FROM Employee WHERE Fullname='Elnur Salamov'

SELECT * FROM Employee

SELECT * FROM Employee WHERE Fullname LIKE '%im%'

SELECT SUBSTRING(Email,1,5),Email FROM Employee 

SELECT SUBSTRING(Email,1,CHARINDEX('@',Email)-1),Email FROM Employee 

SELECT LEN(Fullname)  FROM Employee WHERE Id=5

SELECT * FROM Employee

SELECT Fullname As 'Adi ve Soyadi' FROM Employee

SELECT CHARINDEX('@',Email) as [Index],Email FROM Employee

SELECT SUM(Salary) FROM Employee

SELECT * FROM Employee WHERE Salary<(SELECT AVG(Salary) FROM Employee)

SELECT * FROM Employee

-->>>>>>>>>>>>>>>>>>                                        TASK 4



CREATE DATABASE Library

USE Library



CREATE TABLE Books
(
Id int primary key identity,
[Name] nvarchar(20),
)



CREATE TABLE BookInformation
(
Id int primary key identity,
PageCount int,
PublishedYear int,
BookId int foreign key references Books(Id)
)



CREATE TABLE Author
(
Id int primary key identity,
[Name] nvarchar(20)
)



CREATE TABLE BookAuthor
(
Id int primary key identity,
BookId int foreign key references Books(Id),
AuthorId int foreign key references Author(Id)
)


CREATE TABLE Genre
(
Id int primary key identity,
[Name] nvarchar(20)
)

CREATE TABLE BookGenre 
(
Id int primary key identity,
BookId int foreign key references Books(Id),
GenreId int foreign key references Genre(Id)
)

INSERT INTO Books
([Name])
VALUES
('Book1'),
('Book2'),
('Book3'),
('Book4'),
('Book5')
SELECT * FROM BookInformation

INSERT INTO BookInformation
(PageCount,PublishedYear,BookId)
VALUES
(100,2000,2),
(155,1980,1),
(350,2020,3),
(53,2010,4),
(158,2017,5)

USE Library

INSERT INTO Author
([Name])
VALUES
('Author1'),
('Author2'),
('Author3'),
('Author4'),
('Author5')


INSERT INTO BookAuthor
(BookId,AuthorId)
VALUES
(1,2),
(2,3),
(3,4),
(4,1),
(5,5)


INSERT INTO Genre
([Name])
VALUES 
('Genre1'),
('Genre2'),
('Genre3'),
('Genre4'),
('Genre5')



INSERT INTO BookGenre
(BookId,GenreId)
VALUES
(1,1),
(2,3),
(3,4),
(4,5),
(5,5)

SELECT * FROM  BookAuthor

SELECT * FROM  Books