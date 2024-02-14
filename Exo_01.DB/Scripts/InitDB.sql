--﻿DELETE FROM [0toM_Artist_Track];
--DELETE FROM [Artist];
--DELETE FROM [Genre];
--DELETE FROM [Track];

SET IDENTITY_INSERT [Artist] ON;

	--[Id_Artist] INT NOT NULL IDENTITY,
	--[Name] NVARCHAR(100) NOT NULL,
	--[BirthDate] DATE NOT NULL,
	--[DeathDate] DATE,
	--CONSTRAINT PK_Artist PRIMARY KEY ([Id_Artist]),

INSERT INTO [Artist] ([Id_Artist], [Name], [BirthDate], [DeathDate])
	VALUES (1, 'Michael Jackson', '1958-08-29', '2009-06-25'),
			(2, 'Thom Yorke', '1968-10-07', NULL),
			(3, 'Nujabes', '1974-02-07', '2010-02-26'),
			(4, 'Charlotte de Witte', '1992-07-21', NULL);

SET IDENTITY_INSERT [Artist] OFF;

-------------------------------------------------

SET IDENTITY_INSERT [Genre] ON;

	--[Id_Genre] INT NOT NULL IDENTITY,
	--[Name] NVARCHAR(100) NOT NULL,
	--CONSTRAINT PK_Genre PRIMARY KEY ([Id_Genre])

INSERT INTO [Genre] ([Id_Genre], [Name])
	VALUES (1, 'Pop'),
			(2, 'Rock'),
			(3, 'Hip-hop'),
			(4, 'Techno');

SET IDENTITY_INSERT [Genre] OFF;

-------------------------------------------------

SET IDENTITY_INSERT [Track] ON;

	--[Id_Track] INT NOT NULL IDENTITY,
	--[Name] NVARCHAR(100) NOT NULL,
	--[Duration] INT NOT NULL,
	--[Genre_Id] INT NOT NULL,
	--CONSTRAINT PK_Track PRIMARY KEY ([Id_Track]),
	--CONSTRAINT FK_Genre FOREIGN KEY ([Genre_Id]) REFERENCES [Genre]([Id_Genre])

INSERT INTO [Track] ([Id_Track], [Name], [Duration], [Genre_Id])
	VALUES (1, 'Beat It', 298, 1),
			(2, 'The Eraser', 295, 2),
			(3, 'Feather', 175, 3),
			(4, 'Brussels', 360, 4);

SET IDENTITY_INSERT [Track] OFF;

-------------------------------------------------

INSERT INTO [0toM_Artist_Track]([Track_Id], [Artist_Id])
VALUES (1, 1),
		(2, 2),
		(3, 3),
		(4, 4);

	--[Track_Id] INT NOT NULL,
	--[Artist_Id] INT NOT NULL,
	--CONSTRAINT PK_0toM_Artist_Track PRIMARY KEY ([Track_Id], [Artist_Id]),
	--CONSTRAINT FK_Track FOREIGN KEY ([Track_Id]) REFERENCES [Track]([Id_Track]),
	--CONSTRAINT FK_Artist FOREIGN KEY ([Artist_Id]) REFERENCES [Artist]([Id_Artist])