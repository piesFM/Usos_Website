CREATE TABLE Exam(ID Integer IDENTITY(1, 1), NameOfSub NVARCHAR(64), Professor NVARCHAR(64), Date NVARCHAR(20), PRIMARY KEY(ID));
CREATE TABLE SubjectGroup(ID INTEGER NOT NULL IDENTITY(1, 1), ID_USER INTEGER NOT NULL FOREIGN KEY REFERENCES [User](ID), ID_EXAM INTEGER NOT NULL FOREIGN KEY REFERENCES Exam(Id), PRIMARY KEY(ID))
Create TABLE [Subject](ID Integer IDENTITY(1, 1), NameOfSub NVARCHAR(64), Professor NVARCHAR(64), ECTS INTEGER NOT NULL, Department NVARCHAR(32), PRIMARY KEY(ID)) 
CREATE TABLE [User](ID Integer IDENTITY(1, 1), Login NVARCHAR(64), Hash NVARCHAR(64), Data NVARCHAR(20), Flag Integer, ECTS Integer, Department NVARCHAR(32), PRIMARY KEY(ID))

CREATE TABLE UserToCourse(ID INTEGER IDENTITY(1,1) PRIMARY KEY, UserID INTEGER FOREIGN KEY REFERENCES [User](ID),
	CourseID INTEGER FOREIGN KEY REFERENCES [Course](ID))

DROP TABLE IF EXISTS MarketPlace
DROP TABLE IF EXISTS Courses
DROP TABLE IF EXISTS People
CREATE TABLE People(ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, FirstName NVARCHAR(64), LastName NVARCHAR(64),
Room INTEGER, [Phone] NVARCHAR(64), [Email] NVARCHAR(64))

CREATE TABLE Courses(ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY, [Name] NVARCHAR(64), [Professor] INTEGER FOREIGN KEY REFERENCES [People](ID),
[DayOfWeek] NVARCHAR(64), [Starts] TIME, [Ends] TIME, Room INTEGER, [NumberOfStudents] INTEGER,
[PlacesAvailable] INTEGER, [Type] NVARCHAR(64), Examination NVARCHAR(64))

CREATE TABLE MarketPlace(ID INTEGER NOT NULL IDENTITY(1,1) PRIMARY KEY,[CourseID] INTEGER FOREIGN KEY REFERENCES [Courses](ID),
Semester NVARCHAR(64), Department NVARCHAR(64))

DELETE FROM People
INSERT INTO People(FirstName, LastName, Room, Phone, Email) VALUES
('John','Smith',9001,'123456789','eqweq@gmail.com'),
('Adam','Kowalski',9002,'432532367','kokokok@op.pl'),
('Mariusz','Wójcik',9002,'432532367','kokokok@op.pl'),
('Jan','Kowalski',1003,'4356890139','eqweq@wp.pl'),
('Marcin','Pudzianowski',4678,'0987349674','marcin@gmail.com'),
('Monika','Miller',3313,'232435567','rwrw3@vp.pl'),
('Tadeusz','Rydzyk',1556,'124124234','rydzyk@op.pl')

DELETE FROM Courses
INSERT INTO Courses([Name], Professor, [DayOfWeek], Starts, Ends, Room, [Type], [NumberOfStudents], PlacesAvailable, Examination) VALUES
('Philosophy',1,'Monday','14:00:00','15:30:00',1414,'Class',17,21,'Examination'),
('English',4,'Wednesday','14:00:00','16:00:00',4321,'Class',14,14,'Examination'),
('Programming for WWW',3,'Friday','7:00:00','8:45:00',5311,'Laboratory',20,20,'Credit'),
('Physics',2,'Tuesday','18:00','19:30',3124,'Lecture',10,15,'Credit'),
('Computer Networks',6,'Monday','13:45','15:00',0012,'Laboratory',19,20,'Examination'),
('Programming in .Net',1,'Thursday','15:30','18:00',4120,'Laboratory',5,15,'Credit'),
('Programming in Java',2,'Thursday','9:00','10:45',1334,'Lecture',32,35,'Examination'),
('Protection of Intellectual Property',7,'Friday','7:40','9:00',0313,'Lecture',40,45,'Examination'),
('Education for Family Life',6,'Sunday','6:03','7:17',0001,'Class',44,69,'Credit'),
('Religion',7,'Sunday','23:00','00:03',6669,'Lecture',666,777,'Examination'),
('Physical Education',5,'Thursday','7:00','10:00',0003,'Class',6,8,'Credit')

DELETE FROM MarketPlace
INSERT INTO MarketPlace(CourseID,Semester,Department) VALUES
(1,'Winter','WMII'),
(5,'Summer','FAIS'),
(2,'Summer','WMII')

SELECT * FROM People
SELECT * FROM Courses
SELECT * FROM MarketPlace

INSERT INTO UserToCourse VALUES
(2,7),
(2,8),
(2,7)


Drop Table Exam
Drop Table SubjectGroup
Delete from SubjectGroup
INSERT INTO Exam(NameOfSub, Professor, Date) Values('Matematyka Dyskretna', 'Pani Bakłażan', '30-1-2019'), ('ASD', 'Pan Gniadek', '10-1-2019')

DELETE FROM [User]
DROP TABLE [User]
INSERT INTO [User] VALUES('ADMIN', '12345', '13-5-1997', 0, 50, 'WMII')
Insert into SubjectGroup(ID_USER, ID_EXAM) VALUES(1, 1)

Select * from SubjectGroup
SELECT * FROM [Subject]
select * from [User]
insert into [Subject](NameOfSub, Professor, ECTS, Department) Values('Matematyka Dyskretna', 'Pani Bakłażan', 4, 'FAIS'),('Analiza Matematyczna', 'Edward Szczypka', 6, 'WMII')
Drop Table [Subject]
Select * From [Subject]
DELETE FROM SubjectGroup

