﻿CREATE TABLE [dbo].[MetricCategory]
(
	[MetricCategoryId] INT NOT NULL PRIMARY KEY, 
    [MetricCategoryName] NVARCHAR(50) NOT NULL, 
    [SortKey] INT NOT NULL DEFAULT 0
)
