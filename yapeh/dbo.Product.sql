CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [Code] NCHAR(10) NULL, 
    [Price] MONEY NULL, 
    [Stock] INT NULL
)
