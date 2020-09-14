CREATE VIEW [dbo].[SolutionMaturityView] AS
	SELECT t.TeamName, s.SolutionName, mc.MetricCategoryName, m.MaturityMetricName, sm.MaturityLevelId, ml.MaturityLevelName, mc.SortKey as [CategorySortKey], m.SortKey as [MetricSortKey]
        FROM 
            Solution as s
                INNER JOIN Team t
                    ON s.TeamId = t.TeamId
                INNER JOIN SolutionMetric sm
                    ON s.SolutionId = sm.SolutionId
                INNER JOIN MaturityLevel ml
                    ON sm.MaturityLevelId = ml.MaturityLevelId
                INNER JOIN MaturityMetric m
                    ON sm.MaturityMetricId = m.MaturityMetricId
                INNER JOIN MetricCategory mc
                    ON m.MetricCategoryId = mc.MetricCategoryId