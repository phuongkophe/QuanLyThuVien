IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                where  TABLE_NAME = 'Rent'))
BEGIN
   drop table Rent --Do Stuff
END
IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                where  TABLE_NAME = 'Reader'))
BEGIN
   drop table Reader --Do Stuff
END
IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                where  TABLE_NAME = 'Book'))
BEGIN
   drop table Book --Do Stuff
END
IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE   TABLE_NAME = 'Author'))
BEGIN
   drop table Author --Do Stuff
END

Create table Author
(
	Id int PRIMARY KEY IDENTITY(1,1),
	FullName varchar(50),

)

GO
Create table Book
(
	Id int PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(100),
	Price float,
	Publisher NVARCHAR,
	Categories NVARCHAR,
	DatePublished DATE,
	AuthorID int, 
	FOREIGN KEY(AuthorID) REFERENCES Author(Id) 
)
GO

Create table Reader
(
	Id int PRIMARY KEY IDENTITY(1,1),
	FullName varchar(50),
	PhoneNumber int,
	Email varchar(50),
)
GO

Create table Rent
(
	Id int PRIMARY KEY IDENTITY(1,1),
	RentDate date,
	ReturnDate date,
	IsReturn bit,
	ReaderID int
	FOREIGN KEY(ReaderID) REFERENCES Reader(Id),
	BookID int,
	FOREIGN KEY(BookID) REFERENCES Book(Id) 
)