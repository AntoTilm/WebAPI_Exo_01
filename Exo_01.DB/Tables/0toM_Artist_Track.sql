CREATE TABLE [dbo].[0toM_Artist_Track]
(
	[Track_Id] INT NOT NULL,
	[Artist_Id] INT NOT NULL,
	CONSTRAINT PK_0toM_Artist_Track PRIMARY KEY ([Track_Id], [Artist_Id]),
	CONSTRAINT FK_Track FOREIGN KEY ([Track_Id]) REFERENCES [Track]([Id_Track]),
	CONSTRAINT FK_Artist FOREIGN KEY ([Artist_Id]) REFERENCES [Artist]([Id_Artist])
)
