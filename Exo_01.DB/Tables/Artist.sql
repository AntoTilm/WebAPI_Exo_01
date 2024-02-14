CREATE TABLE [dbo].[Artist]
(
	[Id_Artist] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	[BirthDate] DATE NOT NULL,
	[DeathDate] DATE,
	CONSTRAINT PK_Artist PRIMARY KEY ([Id_Artist]),
)
