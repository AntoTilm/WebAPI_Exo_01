CREATE TABLE [dbo].[Track]
(
	[Id_Track] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	[Duration] INT NOT NULL,
	[Genre_Id] INT NOT NULL,
	CONSTRAINT PK_Track PRIMARY KEY ([Id_Track]),
	CONSTRAINT FK_Genre FOREIGN KEY ([Genre_Id]) REFERENCES [Genre]([Id_Genre])
)
