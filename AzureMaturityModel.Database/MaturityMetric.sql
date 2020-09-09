CREATE TABLE [dbo].[MaturityMetric]
(
	[MaturityMetricId] INT NOT NULL PRIMARY KEY, 
    [MetricCategoryId] INT NOT NULL, 
    [MaturityMetricName] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    CONSTRAINT [FK_MaturityMetric_MetricCategory] FOREIGN KEY ([MetricCategoryId]) REFERENCES [MetricCategory]([MetricCategoryId])
)
