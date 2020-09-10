CREATE TABLE [dbo].[SolutionMetric]
(
	[SolutionId] INT NOT NULL , 
	[MaturityMetricId] INT NOT NULL, 
    [MaturityLevelId] TINYINT NOT NULL, 
    [EnvironmentTag] NVARCHAR(50) NOT NULL DEFAULT '', 
    PRIMARY KEY ([SolutionId], [MaturityMetricId], [EnvironmentTag]), 
    CONSTRAINT [FK_SolutionMetric_Solution] FOREIGN KEY ([SolutionId]) REFERENCES [Solution]([SolutionId]), 
    CONSTRAINT [FK_SolutionMetric_MaturityMetricId] FOREIGN KEY (MaturityMetricId) REFERENCES [MaturityMetric]([MaturityMetricId]), 
    CONSTRAINT [FK_SolutionMetric_MaturityLevel] FOREIGN KEY ([MaturityLevelId]) REFERENCES [MaturityLevel]([MaturityLevelId])
)
