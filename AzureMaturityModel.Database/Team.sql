CREATE TABLE [dbo].[Team]
(
	[TeamId] INT NOT NULL PRIMARY KEY, 
    [OrganisationId] UNIQUEIDENTIFIER NOT NULL, 
    [TeamName] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_Team_Organisation] FOREIGN KEY ([OrganisationId]) REFERENCES [Organisation]([OrganisationId])
)
