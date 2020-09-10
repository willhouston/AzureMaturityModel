IF OBJECT_ID('dbo.MaturityMetric', 'U') IS NOT NULL
DROP TABLE dbo.MaturityMetric
GO

IF OBJECT_ID('dbo.MetricCategory', 'U') IS NOT NULL
DROP TABLE dbo.MetricCategory
GO

CREATE TABLE [dbo].[MetricCategory]
(
	[MetricCategoryId] INT NOT NULL PRIMARY KEY, 
    [MetricCategoryName] NVARCHAR(50) NOT NULL
)
