CREATE TABLE [dbo].[Solution]
(
	[SolutionId] INT NOT NULL PRIMARY KEY, 
    [TeamId] INT NOT NULL, 
    [SolutionName] NVARCHAR(50) NOT NULL, 
    [InternalRef] NVARCHAR(50) NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [StatusId] INT NOT NULL, 
    [LastUpdate] DATETIME NULL, 
    CONSTRAINT [FK_Solution_Team] FOREIGN KEY ([TeamId]) REFERENCES [Team]([TeamId])
)
