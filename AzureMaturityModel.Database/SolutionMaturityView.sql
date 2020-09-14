CREATE VIEW [dbo].[SolutionMaturityView] AS
	SELECT s.SolutionName, mc.MetricCategoryName, m.MaturityMetricName, ml.MaturityLevelName
        FROM    
            Solution as s
                INNER JOIN SolutionMetric sm
                    ON s.SolutionId = sm.SolutionId
                INNER JOIN MaturityLevel ml
                    ON sm.MaturityLevelId = ml.MaturityLevelId
                INNER JOIN MaturityMetric m
                    ON sm.MaturityMetricId = m.MaturityMetricId
                INNER JOIN MetricCategory mc
                    ON m.MetricCategoryId = mc.MetricCategoryId