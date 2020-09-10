IF OBJECT_ID('dbo.Solution', 'U') IS NOT NULL
DROP TABLE dbo.Solution
GO

IF OBJECT_ID('dbo.Team', 'U') IS NOT NULL
DROP TABLE dbo.Team
GO

IF OBJECT_ID('dbo.Organisation', 'U') IS NOT NULL
DROP TABLE dbo.Organisation
GO

CREATE TABLE [dbo].[Organisation]
(
	[OrganisationId] [UNIQUEIDENTIFIER] NOT NULL PRIMARY KEY, 
    [OrganisationName] [NVARCHAR](50) NOT NULL
)

